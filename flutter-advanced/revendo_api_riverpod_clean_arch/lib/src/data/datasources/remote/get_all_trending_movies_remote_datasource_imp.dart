import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:revendo_api_riverpod_clean_arch/src/data/datasources/get_all_trending_movies_datasource.dart';
import 'package:revendo_api_riverpod_clean_arch/src/data/dtos/movie_dto.dart';
import 'package:revendo_api_riverpod_clean_arch/src/domain/entities/movie_entity.dart';

class GetAllTrendingMoviesRemoteDatasourceImp implements GetAllTrendingMoviesDatasource {
  final Dio _dio;

  GetAllTrendingMoviesRemoteDatasourceImp(this._dio);

  @override
  Future<List<MovieEntity>> getAllTrendingMovies(String timeWindow) async {
    List<MovieEntity> movies = [];
    try {
      final response = await _dio.get(
        "https://api.themoviedb.org/3/trending/movie/$timeWindow",
        queryParameters: {'api_key': '53b9d940b2d4d2199b4e18d0a05f3d52'},
      );
      movies = List.from(
        response.data!["results"].map(
          (movie) => MovieDto.fromMap(movie),
        ),
      );
      return movies;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return movies;
    }
  }
}
