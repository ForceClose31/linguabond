part of '../blocs.dart';

@immutable
abstract class MeetState {}

class MeetInitial extends MeetState {}

class MeetError extends MeetState {}

class MeetDataLoaded extends MeetState {
  MeetDataLoaded({
    required this.meet,
  });

  final List<Meet> meet;
}
