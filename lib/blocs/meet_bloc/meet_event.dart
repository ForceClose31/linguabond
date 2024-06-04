part of '../blocs.dart';

abstract class MeetEvent {
  const MeetEvent();
}

class LoadMeets extends MeetEvent {}

class AddMeet extends MeetEvent {
  final Meet meet;

  const AddMeet(this.meet);
}

class UpdateMeet extends MeetEvent {
  final Meet meet;

  const UpdateMeet(this.meet);
}

class DeleteMeet extends MeetEvent {
  final int id;

  const DeleteMeet(this.id);
}

class PublishMeet extends MeetEvent {
  final int id;

  const PublishMeet(this.id);
}
