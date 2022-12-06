import 'package:movies_app/movies/data/model/genres_model.dart';
import 'package:movies_app/movies/domain/entities/movie_details.dart';

class MovieDetailsModel extends MovieDetails {
  const MovieDetailsModel(
      {required super.backgroundPath,
      required super.id,
      required super.genres,
      required super.overview,
      required super.releaseDate,
      required super.runTime,
      required super.title,
      required super.voteAverage});

  factory MovieDetailsModel.fromJson(Map<String, dynamic> json) {
    return MovieDetailsModel(
        backgroundPath: json['background_path'],
        id: json['id'],
        genres: List<GenresModel>.from(json['genres'].map((x) => GenresModel.fromJson(x))),
        overview: json['overview'],
        releaseDate: json['release_date'],
        runTime: json['runtime'],
        title: json['title'],
        voteAverage: json['vote_average']);
  }
}
