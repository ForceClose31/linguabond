part of '../blocs.dart';

@immutable
abstract class LeaderboardEvent {}

class SetLeaderboardState extends LeaderboardEvent {
  SetLeaderboardState([this.state]);

  final LeaderboardState? state;
}

class SetLeaderboardToInitial extends LeaderboardEvent {}

class InitializeLeaderboardData extends LeaderboardEvent {
  InitializeLeaderboardData({this.completer});

  final Completer<bool>? completer;
}
