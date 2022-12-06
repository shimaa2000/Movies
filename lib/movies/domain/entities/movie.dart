import 'package:equatable/equatable.dart';

class Movies extends Equatable {
  final int id;
  final String title;
  final List<int> genreIds;
  final String overview;
  final double voteAverage;
  final String backdropPath;
  final String releaseDate;

  const Movies({
    required this.id,
    required this.title,
    required this.genreIds,
    required this.overview,
    required this.voteAverage,
    required this.releaseDate,
    required this.backdropPath,
  });

  @override
  List<Object> get props => [
        id,
        title,
    genreIds,
        overview,
    backdropPath,
    voteAverage,
        releaseDate,
      ];
}
