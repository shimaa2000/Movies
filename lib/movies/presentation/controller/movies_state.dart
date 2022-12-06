part of 'movies_bloc.dart';

@immutable
class MoviesState extends Equatable {
  final List<Movies> nowPlayingMovies;
  final String nowPlayingMessage;
  final RequestState nowPlayingState;
  final List<Movies> popularMovies;
  final String popularMessage;
  final RequestState popularState;
  final List<Movies> topRatedMovies;
  final String topRatedMessage;
  final RequestState topRatedState;

  const MoviesState({
    this.nowPlayingMovies = const [],
    this.nowPlayingMessage = '',
    this.nowPlayingState = RequestState.loading,
    this.popularMovies = const [],
    this.popularMessage = '',
    this.popularState = RequestState.loading,
    this.topRatedMovies = const [],
    this.topRatedMessage = '',
    this.topRatedState = RequestState.loading,
  });

  MoviesState copyWith({
    List<Movies>? nowPlayingMovies,
    String? nowPlayingMessage,
    RequestState? nowPlayingState,
    List<Movies>? popularMovies,
    String? popularMessage,
    RequestState? popularState,
    List<Movies>? topRatedMovies,
    String? topRatedMessage,
    RequestState? topRatedState,
  }) {
    return MoviesState(
      nowPlayingMovies: nowPlayingMovies ?? this.nowPlayingMovies,
      nowPlayingMessage: nowPlayingMessage ?? this.nowPlayingMessage,
      nowPlayingState: nowPlayingState ?? this.nowPlayingState,
      popularMessage: popularMessage ?? this.popularMessage,
      popularMovies: popularMovies ?? this.popularMovies,
      popularState: popularState ?? this.popularState,
      topRatedMessage: topRatedMessage ?? this.topRatedMessage,
      topRatedMovies: topRatedMovies ?? this.topRatedMovies,
      topRatedState: topRatedState ?? this.topRatedState,
    );
  }

  @override
  List<Object> get props => [
        nowPlayingMovies,
        nowPlayingMessage,
        nowPlayingState,
        popularMessage,
        popularMovies,
        popularState,
        topRatedMessage,
        topRatedMovies,
        topRatedState,
      ];
}
