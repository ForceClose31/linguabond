part of '../blocs.dart';

@immutable
abstract class LeaderboardState {}

class LeaderboardInitial extends LeaderboardState {}

class LeaderboardError extends LeaderboardState {}

class LeaderboardDataLoaded extends LeaderboardState {
  LeaderboardDataLoaded({
    required this.leaderboards,
    required this.position,
  });

  final List<Leaderboard> leaderboards;
  final int? position;
}
