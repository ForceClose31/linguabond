part of 'services.dart';

final class ApiHelper {
  static String get _url => kDebugMode ? dotenv.env['DEVELOPMENT_URL']! : dotenv.env['PRODUCTION_URL']!;

  static Future<Map<String, String>> _getHeaders({bool ignoreAuthorization = false, bool isMultipartFormData = false}) async {
    return {
      if (!ignoreAuthorization) 'Authorization': 'Bearer ${await _getToken()}',
      'Access-Control-Allow-Origin': '*',
      'Content-Type': isMultipartFormData ? 'multipart/form-data' : 'application/json',
      'Accept': 'application/json',
    };
  }

  static http.StreamedResponse _onRequestTimeout() => http.StreamedResponse(
        Stream.fromIterable(
          [
            json.encode({'message': 'Request Timeout'}).codeUnits
          ],
        ),
        408,
      );

  static Future<dynamic> _request({
    required String method,
    required Uri uri,
    Map<String, dynamic>? body,
    bool ignoreAuthorization = false,
    bool decode = true,
    Duration? timeout,
  }) async {
    http.Request request = http.Request(method, uri);
    request.headers.addAll(await _getHeaders(ignoreAuthorization: ignoreAuthorization));
    debugPrint('(http request) : $method ${request.url} ${request.headers} $body');
    if (body != null) request.body = json.encode(body);

    http.StreamedResponse response;
    if (timeout == null) {
      response = await request.send();
    } else {
      response = await request.send().timeout(timeout, onTimeout: _onRequestTimeout);
    }

    dynamic responseString = !decode ? await response.stream.toBytes() : await response.stream.bytesToString();
    if (response.statusCode != 200) {
      // debugPrint('(http response) : $method ${request.url} ${request.headers} $body => $responseString');
      debugPrint('(http response) : $method ${request.url} ${request.headers} => $responseString');
      throw {
        'data': json.decode(responseString),
        'status_code': response.statusCode,
      };
    }

    if (!decode) {
      // debugPrint('(http response) : $method ${request.url} ${request.headers} $body => $responseString');
      debugPrint('(http response) : $method ${request.url} ${request.headers} => $responseString');
      return responseString;
    }

    // debugPrint('(http response) : $method ${request.url} ${request.headers} $body => $responseString');
    debugPrint('(http response) : $method ${request.url} ${request.headers} => $responseString');
    return json.decode(responseString);
  }

  static Future<dynamic> _requestMultipart({
    required String method,
    required Uri uri,
    Map<String, String>? fields,
    List<http.MultipartFile>? files,
    Duration? timeout,
  }) async {
    var request = http.MultipartRequest(method, uri);
    request.headers.addAll(await _getHeaders(isMultipartFormData: true));
    if (files != null) request.files.addAll(files);
    if (fields != null) request.fields.addAll(fields);

    debugPrint('(http request) : ${request.method} ${request.url} ${request.headers} ${request.fields}');

    http.StreamedResponse response;
    if (timeout == null) {
      response = await request.send();
    } else {
      response = await request.send().timeout(timeout, onTimeout: _onRequestTimeout);
    }

    if (response.statusCode != 200) {
      String responseString = await response.stream.bytesToString();
      // debugPrint('(http response) : $method ${request.url} ${request.headers} ${request.fields} => $responseString');
      debugPrint('(http response) : $method ${request.url} ${request.headers} => $responseString');
      throw {
        'data': json.decode(responseString),
        'status_code': response.statusCode,
      };
    }

    String responseString = await response.stream.bytesToString();
    // debugPrint('(http response) : $method ${request.url} ${request.headers} ${request.fields} => $responseString');
    debugPrint('(http response) : $method ${request.url} ${request.headers} => $responseString');
    return json.decode(responseString);
  }

  static Future<void> _refreshCurrentUser(dynamic response) async {
    if (response != null) {
      currentUser = User.fromJson(response['data']);
      if (currentUser!.foto != null) {
        try {
          currentUser!.imageData = await getFile(uri: Uri.parse(currentUser!.foto!), timeout: const Duration(seconds: 10));
        } catch (e) {
          // Ignored, really
        }
      }
      return;
    }

    // try {
    //   currentUser = await ApiHelper.get(pathUrl: dotenv.env['ENDPOINT_AUTH_USER']!).then((value) => User.fromJson(value['data']));
    // } catch (e) {
    //   ApiHelper.handleError(e);
    // }
  }

  static Future<String?> _getToken({bool refreshCurrentUser = false}) async {
    SharedPreferences sharedPref = await SharedPreferences.getInstance();
    String? token = sharedPref.getString(keyToken);

    if (refreshCurrentUser) {
      if (token != null) {
        await _refreshCurrentUser(null);
      }
      return null;
    }

    if (token == null) {
      throw {
        'data': {
          'message': 'Unauthenticated.',
        },
        'status_code': 401,
      };
    }

    if (refreshCurrentUser) {
      dynamic response = await post(pathUrl: dotenv.env['ENDPOINT_AUTH_USER']!);
      await _refreshCurrentUser(response);
    }

    return token;
  }

  static Future<void> signIn({required String email, required String password}) async {
    dynamic response = await _request(
      method: 'POST',
      uri: Uri.parse('$_url/${dotenv.env['ENDPOINT_AUTH_LOGIN']}'),
      body: {
        'email': email,
        'password': password,
      },
      ignoreAuthorization: true,
      timeout: const Duration(seconds: 30),
    );

    SharedPreferences sharedPref = await SharedPreferences.getInstance();
    await sharedPref.setString(keyToken, response['token']);

    response['data']['detail']['role'] = response['data']['role'];

    await _refreshCurrentUser(response);
  }

  static Future<void> signInWithToken() async => _getToken(refreshCurrentUser: true);

  static Future<void> signOut() async {
    try {
      await post(pathUrl: dotenv.env['ENDPOINT_LOGOUT']!);
    } catch (e) {
      // Ignored, really
    }

    SharedPreferences sharedPref = await SharedPreferences.getInstance();

    await sharedPref.remove(keyToken);

    while (NavigationHelper.canGoBack()) {
      NavigationHelper.back();
    }
    NavigationHelper.toReplacement(MaterialPageRoute(builder: (context) => const SignInPage()));
    await Future.delayed(const Duration(milliseconds: 300));

    // TODO: Set all bloc to initial
  }

  static Future<dynamic> get({required String pathUrl}) => _request(method: 'GET', uri: Uri.parse('$_url/api/$pathUrl'));

  static Future<dynamic> post({required String pathUrl, Map<String, dynamic>? body, bool ignoreAuthorization = false}) => _request(method: 'POST', uri: Uri.parse('$_url/api/$pathUrl'), body: body, ignoreAuthorization: ignoreAuthorization);

  static Future<dynamic> put({required String pathUrl, Map<String, dynamic>? body}) => _request(method: 'PUT', uri: Uri.parse('$_url/api/$pathUrl'), body: body);

  static Future<dynamic> delete({required String pathUrl, Map<String, dynamic>? body}) => _request(method: 'DELETE', uri: Uri.parse('$_url/api/$pathUrl'), body: body);

  static Future<dynamic> getFile({required Uri uri, Duration? timeout}) => _request(method: 'GET', uri: uri, decode: false, ignoreAuthorization: true, timeout: timeout);

  static Future<dynamic> postMultipart({
    required String pathUrl,
    Map<String, String>? fields,
    List<http.MultipartFile>? files,
    Duration? timeout,
  }) =>
      _requestMultipart(
        method: 'POST',
        uri: Uri.parse('$_url/api/$pathUrl'),
        fields: fields,
        files: files,
        timeout: timeout,
      );

  static Future<void> handleError(Object e) {
    if (e is Map && (e['status_code'] == 401 || e['status_code'] == 422)) {
      if (e['data']['message'] is Map) return showErrorDialog(e['data']['message'].toString());

      if (e['data']['message'] == 'The provided credentials are incorrect.') return showErrorDialog('Email atau Password salah');

      while (NavigationHelper.canGoBack()) {
        NavigationHelper.back();
      }
      NavigationHelper.toReplacement(MaterialPageRoute(builder: (context) => const SignInPage()));

      return showInformationDialog('Sesi Anda telah berakhir');
    }

    if (e is Map && e['status_code'] == 404) return showErrorDialog('URL tidak ditemukan, silahkan update aplikasi');

    if (e is Map && e['status_code'] == 500) return showErrorDialog('Terjadi error di server');

    if (e is Map && e['data'] is Map && e['data']['message'] != null) {
      if (e['data']['message'] is Map) return showErrorDialog(e['data']['message'].toString());

      return showErrorDialog(e['data']['message']);
    }

    if (e is http.ClientException) return showErrorDialog('Gagal terhubung ke server, silahkan periksa koneksi internet Anda');

    if (e is FormatException) return showErrorDialog('${e.source}, ${e.message}');

    return showErrorDialog(e.toString());
  }
}
