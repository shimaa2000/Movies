import 'package:get_it/get_it.dart';
import 'package:movies_app/movies/data/data_source/movie_remote_data_source.dart';
import 'package:movies_app/movies/data/repository/movies_repository.dart';
import 'package:movies_app/movies/domain/repository/base_movies_repository.dart';
import 'package:movies_app/movies/domain/usecases/get_now_playing_movies_usecase.dart';
import 'package:movies_app/movies/domain/usecases/get_popular_movies_usecase.dart';
import 'package:movies_app/movies/domain/usecases/get_top_rated_movies_usecase.dart';
import '../../movies/presentation/controller/movies_bloc.dart';

final sl = GetIt.instance;

class ServicesLocator {
  void init(){
    ///BLOC
    sl.registerLazySingleton(
      () => MoviesBloc(sl(),sl(),sl()),
    );

    ///USE CASES
    sl.registerLazySingleton(
      () => GetNowPlayingUseCase(sl()),
    );
    sl.registerLazySingleton(
      () => GetPopularMoviesUseCase(sl()),
    );
    sl.registerLazySingleton(
      () => GetTopRatedMoviesUseCase(sl()),
    );

    ///Repository
    sl.registerLazySingleton<BaseMoviesRepository>(
      () => MovieRepository(sl()),
    );

    ///DATA SOURCE
    sl.registerLazySingleton<BaseMovieRemoteDateSource>(
      () => MovieRemoteDateSource(),
    );
  }
}
