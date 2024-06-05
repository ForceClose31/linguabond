part of '../blocs.dart';

class MeetBloc extends Bloc<MeetEvent, MeetState> {
  final List<Meet> _meets = [];

  MeetBloc() : super(MeetInitial()) {
    on<AddMeet>(_onAddMeet);
    on<PublishMeet>(_onPublishMeet);
    on<SetMeetState>((event, emit) => emit(event.state ?? _meetDataLoaded));

    on<SetMeetToInitial>((event, emit) {
      _meet = [];

      emit(MeetInitial());
    });
    on<InitializeMeetData>((event, emit) async {
      if (event.completer == null) emit(MeetInitial());

      try {
        dynamic response = await ApiHelper.get(
          pathUrl: dotenv.env['ENDPOINT_MEET_MENTOR_LIST']!,
        );

        _meet =
            (response['data'] as List).map((e) => Meet.fromJson(e)).toList();
      } catch (e) {
        event.completer?.complete(false);
        ApiHelper.handleError(e);
        emit(MeetError(e.toString()));
        return;
      }

      event.completer?.complete(true);
      emit(_meetDataLoaded);
    });
  }

  List<Meet> _meet = [];

  MeetDataLoaded get _meetDataLoaded => MeetDataLoaded(
        meet: _meet,
      );

  void _onAddMeet(AddMeet event, Emitter<MeetState> emit) async {
    try {
      final newMeet = await ApiHelper.addMeet(event.meet);
      _meets.add(newMeet);
      emit(MeetLoaded(List.from(_meets)));
    } catch (e) {
      emit(MeetError(e.toString()));
    }
  }

  void _onPublishMeet(PublishMeet event, Emitter<MeetState> emit) async {
    try {
      await ApiHelper.publishMeet(event.id);
      emit(MeetPublished());
    } catch (e) {
      emit(MeetError(e.toString()));
    }
  }
}
