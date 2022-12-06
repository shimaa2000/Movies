import 'package:dio/dio.dart';
import 'package:movies_app/core/error/exceptions.dart';
import 'package:movies_app/core/network/api_constants.dart';
import 'package:movies_app/core/network/error_message_model.dart';
import 'package:movies_app/movies/data/model/movies_model.dart';
import 'package:movies_app/movies/domain/usecases/get_movie_details.dart';

import '../../domain/entities/movie.dart';

abstract class BaseMovieRemoteDateSource{
  Future<List<Movies>> getNowPlayingMovies();
  Future<List<Movies>> getPopularMovies();
  Future<List<Movies>> getTopRatedMovies();
  Future<List<Movies>> getMovieDetails(MovieDetailsParameters parameters);
}

class MovieRemoteDateSource extends BaseMovieRemoteDateSource{
  @override
  Future<List<Movies>> getNowPlayingMovies() async {
    final response = await Dio()
        .get(ApiConstants.nowPlayingMoviesPath, queryParameters: {
      'api_key': ApiConstants.apiKey,
    });
    if (response.statusCode == 200) {
      return List.from((response.data['results'] as List).map(
        (e) => MoviesModel.fromJson(e),
      ));
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }

  @override
  Future<List<Movies>> getPopularMovies() async{
    final response = await Dio()
        .get(ApiConstants.popularPath, queryParameters: {
      'api_key': ApiConstants.apiKey,
    });
    if (response.statusCode == 200) {
      return List.from((response.data['results'] as List).map(
            (e) => MoviesModel.fromJson(e),
      ));
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }

  @override
  Future<List<Movies>> getTopRatedMovies() async{
    final response = await Dio()
        .get(ApiConstants.topRatedPath, queryParameters: {
      'api_key': ApiConstants.apiKey,
    });
    if (response.statusCode == 200) {
      return List.from((response.data['results'] as List).map(
            (e) => MoviesModel.fromJson(e),
      ));
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }
@override
  Future<List<Movies>> getMovieDetails(MovieDetailsParameters parameters) async{
    final response = await Dio()
        .get(ApiConstants.topRatedPath, queryParameters: {
      'api_key': ApiConstants.apiKey,
    });
    if (response.statusCode == 200) {
      return List.from((response.data['results'] as List).map(
            (e) => MoviesModel.fromJson(e),
      ));
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }



}
