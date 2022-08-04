import 'package:dio/dio.dart';

import 'movie_model.dart';

class MovieRepository {
  final Dio dio;
  MovieRepository({
    required this.dio,
  });

  Future<List<MovieModel>> getAllMovies() async {
    List<MovieModel> movies = [];
    final response = await dio.get('https://ghibliapi.herokuapp.com/films');

    movies = List.from(
      response.data.map(
        (movie) => MovieModel.fromMap(movie),
      ),
    );
    print(movies);
    return movies;
  }
}
