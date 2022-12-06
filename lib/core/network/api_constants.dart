class ApiConstants{
  static const apiKey='9946c71c3350d56f1cf0f6ea13431b94';
  static const baseUrl='https://api.themoviedb.org/3';
  static const nowPlayingMoviesPath='$baseUrl/movie/now_playing';
  static const popularPath='$baseUrl/movie/popular';
  static const topRatedPath='$baseUrl/movie/top_rated';
  static const imageBaseUrl='https://image.tmdb.org/t/p/w500';

  static String imageUrl(String path) => '$imageBaseUrl$path';
}