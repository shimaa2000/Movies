import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/usecase/base_usecase.dart';
import 'package:movies_app/movies/domain/usecases/get_popular_movies_usecase.dart';
import 'package:movies_app/movies/domain/usecases/get_top_rated_movies_usecase.dart';
import '../../../core/utils/enums.dart';
import '../../domain/usecases/get_now_playing_movies_usecase.dart';
import '../../domain/entities/movie.dart';

part 'movies_event.dart';

part 'movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final GetNowPlayingUseCase getNowPlayingUseCase;
  final GetPopularMoviesUseCase getPopularMoviesUseCase;
  final GetTopRatedMoviesUseCase getTopRatedMoviesUseCase;

  MoviesBloc(this.getNowPlayingUseCase, this.getPopularMoviesUseCase,
      this.getTopRatedMoviesUseCase)
      : super(const MoviesState()) {
    on<GetNowPlayingEvent>(_getNowPlayingMovies);
    on<GetPopularMoviesEvent>(_getPopularMovies);
    on<GetTopRatedEvent>(_getTopRatedMovies);
  }



  FutureOr<void> _getNowPlayingMovies(event, emit) async {
    final result = await getNowPlayingUseCase(const NoParameters());

    result.fold((l) {
      emit(state.copyWith(
        nowPlayingState: RequestState.error,
        nowPlayingMessage: l.message,
      ));
    }, (r) {
      emit(state.copyWith(
        nowPlayingState: RequestState.loaded,
        nowPlayingMovies: r,
      ));
    });
  }

  FutureOr<void> _getPopularMovies(event, emit) async {
    final result = await getPopularMoviesUseCase(const NoParameters());

    result.fold((l) {
      emit(state.copyWith(
        popularState: RequestState.error,
        popularMessage: l.message,
      ));
    }, (r) {
      emit(state.copyWith(
        popularState: RequestState.loaded,
        popularMovies: r,
      ));
    });
  }

  FutureOr<void> _getTopRatedMovies(event ,emit) async {
  final result = await getTopRatedMoviesUseCase(const NoParameters());

  result.fold((l) {
  emit(state.copyWith(
  topRatedState: RequestState.error,
  topRatedMessage: l.message,
  ));
  }, (r) {
  emit(state.copyWith(
  topRatedState: RequestState.loaded,
  topRatedMovies: r,
  ));
  });
}
}
