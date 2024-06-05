part of '../blocs.dart';

abstract class MeetEvent {
  const MeetEvent();
}

class SetMeetState extends MeetEvent {
  SetMeetState([this.state]);

  final MeetState? state;
}

class SetMeetToInitial extends MeetEvent {}

class InitializeMeetData extends MeetEvent {
  InitializeMeetData({this.completer});

  final Completer<bool>? completer;
}

class AddMeet extends MeetEvent {
  final Meet meet;

  const AddMeet(this.meet);
}

class PublishMeet extends MeetEvent {
  final int id;

  const PublishMeet(this.id);
}
