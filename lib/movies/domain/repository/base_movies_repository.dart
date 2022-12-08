import 'package:dartz/dartz.dart';
// import 'package:movies_app/movies/domain/entities/movie_details.dart';
import '../../../core/error/failure.dart';
import '../entities/movie.dart';

abstract class BaseMoviesRepository{
  Future<Either<Failure,List<Movies>>> getNowPlayingMovies();
  Future<Either<Failure,List<Movies>>> getPopularMovies();
  Future<Either<Failure,List<Movies>>> getTopRelatedMovies();
  // Future<Either<Failure,MovieDetails>> getMovieDetails();
}