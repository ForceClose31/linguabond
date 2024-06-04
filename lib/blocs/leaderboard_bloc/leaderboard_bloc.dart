part of '../blocs.dart';

class LeaderboardBloc extends Bloc<LeaderboardEvent, LeaderboardState> {
  LeaderboardBloc() : super(LeaderboardInitial()) {
    on<SetLeaderboardState>(
        (event, emit) => emit(event.state ?? _leaderboardDataLoaded));

    on<SetLeaderboardToInitial>((event, emit) {
      _leaderboards = [];

      _position = null;

      emit(LeaderboardInitial());
    });

    on<InitializeLeaderboardData>((event, emit) async {
      if (event.completer == null) emit(LeaderboardInitial());

      try {
        dynamic response = await ApiHelper.get(
          pathUrl: dotenv.env[switch (currentUser?.role) {
            // UserRole.remaja => 'ENDPOINT_LEADERBOARD_REMAJA',
            // UserRole.parent =>
            _ => 'ENDPOINT_LEADERBOARD_REMAJA',
          }]!,
        );

        _leaderboards = (response['data']['all'] as List)
            .map((e) => Leaderboard.fromJson(e))
            .toList();

        _position = response['data']['position'];
      } catch (e) {
        event.completer?.complete(false);
        ApiHelper.handleError(e);
        emit(LeaderboardError());
        return;
      }

      event.completer?.complete(true);
      emit(_leaderboardDataLoaded);
    });
  }

  List<Leaderboard> _leaderboards = [];

  int? _position;

  LeaderboardDataLoaded get _leaderboardDataLoaded => LeaderboardDataLoaded(
        leaderboards: _leaderboards,
        position: _position,
      );
}
