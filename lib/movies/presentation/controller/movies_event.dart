part of 'movies_bloc.dart';

@immutable
abstract class MoviesEvent extends Equatable {
  const MoviesEvent();

  @override
  List<Object> get props => [];
}

class GetNowPlayingEvent extends MoviesEvent {}
class GetPopularMoviesEvent extends MoviesEvent {}
class GetTopRatedEvent extends MoviesEvent {}