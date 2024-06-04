part of '../blocs.dart';


class MeetBloc extends Bloc<MeetEvent, MeetState> {
  final List<Meet> _meets = [];

  MeetBloc() : super(MeetInitial()) {
    on<LoadMeets>(_onLoadMeets);
    on<AddMeet>(_onAddMeet);
    on<PublishMeet>(_onPublishMeet); // New event handler
  }

  void _onLoadMeets(LoadMeets event, Emitter<MeetState> emit) async {
    emit(MeetLoading());
    try {
      // Simulate fetching data
      await Future.delayed(Duration(seconds: 1));
      emit(MeetLoaded(List.from(_meets)));
    } catch (e) {
      emit(MeetError(e.toString()));
    }
  }

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
