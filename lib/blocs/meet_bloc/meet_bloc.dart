part of '../blocs.dart';

class MeetBloc extends Bloc<MeetEvent, MeetState> {
  MeetBloc() : super(MeetInitial()) {
    on<SetMeetState>((event, emit) => emit(event.state ?? _meetDataLoaded));

    on<SetMeetToInitial>((event, emit) {
      _meets.clear();

      emit(MeetInitial());
    });

    on<InitializeMeetData>((event, emit) async {
      if (event.completer == null) emit(MeetInitial());

      try {
        _meets = await ApiHelper.get(pathUrl: dotenv.env['ENDPOINT_MEET_MENTOR_LIST']!).then((value) => (value['data'] as List).map((e) => Meet.fromJson(e)).toList());
      } catch (e) {
        event.completer?.complete(false);
        ApiHelper.handleError(e);
        emit(MeetError());
        return;
      }

      event.completer?.complete(true);
      emit(_meetDataLoaded);
    });

    on<AddMeet>((AddMeet event, Emitter<MeetState> emit) async {
      showLoadingDialog();

      FocusManager.instance.primaryFocus?.unfocus();

      try {
        await ApiHelper.addMeet(event.meet);
      } catch (e) {
        NavigationHelper.back();
        ApiHelper.handleError(e);
        return;
      }

      Completer<bool> completer = Completer();
      add(InitializeMeetData(completer: completer));
      await completer.future;

      NavigationHelper.back();
      NavigationHelper.back();

      NavigationHelper.clearSnackBars();
      NavigationHelper.showSnackBar(const SnackBar(content: Text('Jadwal berhasil dibuat')));
    });

    on<PublishMeet>((PublishMeet event, Emitter<MeetState> emit) async {
      showLoadingDialog();

      try {
        await ApiHelper.publishMeet(event.id);
      } catch (e) {
        NavigationHelper.back();
        ApiHelper.handleError(e);
        return;
      }

      Completer<bool> completer = Completer();
      add(InitializeMeetData(completer: completer));
      await completer.future;

      NavigationHelper.back();

      NavigationHelper.clearSnackBars();
      NavigationHelper.showSnackBar(const SnackBar(content: Text('Jadwal berhasil dipublish')));
    });
  }

  List<Meet> _meets = [];

  MeetDataLoaded get _meetDataLoaded => MeetDataLoaded(
        meet: _meets,
      );
}
