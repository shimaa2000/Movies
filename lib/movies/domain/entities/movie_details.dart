import 'package:equatable/equatable.dart';

import 'genres.dart';

class MovieDetails extends Equatable {
  final String backgroundPath;
  final int id;
  final List<Genres> genres;
  final String overview;
  final String releaseDate;
  final int runTime;
  final String title;
  final double voteAverage;

  const MovieDetails({required this.backgroundPath,
    required this.id,
    required this.genres,
    required this.overview,
    required this.releaseDate,
    required this.runTime,
    required this.title,
    required this.voteAverage});

  @override
  List<Object> get props =>
      [
        backgroundPath,
        id,
        overview,
        genres,
        releaseDate,
        runTime,
        title,
        voteAverage,
      ];
}
