part of '../blocs.dart';

abstract class MeetState {
  const MeetState();
}

class MeetInitial extends MeetState {}

class MeetDataLoaded extends MeetState {
  MeetDataLoaded({
    required this.meet,
  });

  final List<Meet> meet;
}

class MeetLoading extends MeetState {}

class MeetLoaded extends MeetState {
  final List<Meet> meets;

  const MeetLoaded(this.meets);
}

class MeetError extends MeetState {
  final String message;

  const MeetError(this.message);
}

class MeetPublished extends MeetState {}
