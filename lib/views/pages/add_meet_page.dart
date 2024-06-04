part of 'pages.dart';

class AddMeetPage extends StatelessWidget {
  const AddMeetPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => NavigationHelper.back(),
            icon: const Icon(Icons.chevron_left),
          ),
          centerTitle: true,
          title: const Text('Buat Kelas'),
          foregroundColor: kColorWhite,
          backgroundColor: kColorSurface,
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: MeetForm(),
        ),
      );
}

class MeetForm extends StatefulWidget {
  const MeetForm({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MeetFormState createState() => _MeetFormState();
}

class _MeetFormState extends State<MeetForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _topikController = TextEditingController();
  final TextEditingController _linkController = TextEditingController();
  final TextEditingController _materiController = TextEditingController();
  final TextEditingController _deskripsiController = TextEditingController();
  final TextEditingController _startTimeController = TextEditingController();
  final TextEditingController _endTimeController = TextEditingController();
  final TextEditingController _tanggalController = TextEditingController();
  final TextEditingController _pesertaController = TextEditingController();

  DateTime? _startTime;
  DateTime? _endTime;
  DateTime? _tanggal;
  late String? _materiFileUrl;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        children: [
          TextFormField(
            controller: _topikController,
            decoration: const InputDecoration(
              labelText: 'Topic',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a topic';
              }
              return null;
            },
          ),
          const SizedBox(height: 24.0),
          TextFormField(
            controller: _linkController,
            decoration: const InputDecoration(
              labelText: 'Link Google Meet',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a Google Meet link';
              }
              return null;
            },
          ),
          const SizedBox(height: 24.0),
          TextFormField(
            controller: _materiController,
            decoration: const InputDecoration(
              labelText: 'Link Modul',
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              final pickedFile = await ApiHelper.getFile(
                uri: Uri.parse('FILE_UPLOAD_ENDPOINT'),
              );
              if (pickedFile != null) {
                setState(() {
                  _materiFileUrl = pickedFile.toString();
                  _materiController.text = _materiFileUrl!;
                });
              }
            },
            child: const Text('Upload Materi'),
          ),
          const SizedBox(height: 24.0),
          TextFormField(
            controller: _startTimeController,
            decoration: const InputDecoration(
              labelText: 'Jam Mulai',
            ),
            onTap: () async {
              final pickedTime = await showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),
              );
              if (pickedTime != null) {
                setState(() {
                  _startTime = DateTime(
                    DateTime.now().year,
                    DateTime.now().month,
                    DateTime.now().day,
                    pickedTime.hour,
                    pickedTime.minute,
                  );
                  _startTimeController.text =
                      DateFormat('HH:mm').format(_startTime!);
                });
              }
            },
          ),
          const SizedBox(height: 24.0),
          TextFormField(
            controller: _endTimeController,
            decoration: const InputDecoration(
              labelText: 'Jam Berakhir',
            ),
            onTap: () async {
              final pickedTime = await showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),
              );
              if (pickedTime != null) {
                setState(() {
                  _endTime = DateTime(
                    DateTime.now().year,
                    DateTime.now().month,
                    DateTime.now().day,
                    pickedTime.hour,
                    pickedTime.minute,
                  );
                  _endTimeController.text =
                      DateFormat('HH:mm').format(_endTime!);
                });
              }
            },
          ),
          const SizedBox(height: 24.0),
          TextFormField(
            controller: _tanggalController,
            decoration: const InputDecoration(
              labelText: 'Tanggal',
            ),
            onTap: () async {
              final pickedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(DateTime.now().year - 1),
                lastDate: DateTime(DateTime.now().year + 1),
              );
              if (pickedDate != null) {
                setState(() {
                  _tanggal = pickedDate;
                  _tanggalController.text =
                      DateFormat('yyyy-MM-dd').format(_tanggal!);
                });
              }
            },
          ),
          const SizedBox(height: 24.0),
          TextFormField(
            controller: _pesertaController,
            decoration: const InputDecoration(
              labelText: 'Jumlah peserta',
            ),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 24.0),
          TextFormField(
            controller: _deskripsiController,
            keyboardType: TextInputType.multiline,
            maxLines: 4,
            decoration: const InputDecoration(
              labelText: 'Deskripsi',
              alignLabelWithHint: true,
            ),
          ),
          const SizedBox(height: 16.0),
          MyFilledButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _submitForm();
              }
            },
            child: const Text('Buat Kelas'),
          ),
          const SizedBox(height: 16.0),
        ],
      ),
    );
  }

  void _submitForm() async {
    final topik = _topikController.text;
    final linkLink = _linkController.text;
    final materi = _materiController.text;
    final deskripsi = _deskripsiController.text;
    final startTime = _startTimeController.text;
    final endTime = _endTimeController.text;
    final tanggal = _tanggalController.text;
    final peserta = _pesertaController.text;

    try {
      await ApiHelper.postMultipart(
        pathUrl: dotenv.env['ENDPOINT_MEET_MENTOR_ADD']!,
        fields: {
          'topik': topik,
          'link': linkLink,
          'materi': materi,
          'jam_mulai': startTime,
          'jam_berakhir': endTime,
          'tanggal': tanggal,
          'deskripsi': deskripsi,
          'total_remaja': peserta,
        },
        files: [
          await http.MultipartFile.fromPath('file',
              materi), 
        ],
      );
      
      // Jika berhasil, kembali ke halaman sebelumnya
      NavigationHelper.back();
    } catch (e) {
      // Tangani error dengan menampilkan pesan kesalahan
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Failed to create meet. Please try again later.'),
      ));
    }
  }

  @override
  void dispose() {
    _topikController.dispose();
    _linkController.dispose();
    _materiController.dispose();
    _deskripsiController.dispose();
    super.dispose();
  }
}
