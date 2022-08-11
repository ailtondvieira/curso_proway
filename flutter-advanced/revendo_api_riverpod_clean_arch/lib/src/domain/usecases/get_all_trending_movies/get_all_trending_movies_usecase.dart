import 'package:revendo_api_riverpod_clean_arch/src/domain/entities/movie_entity.dart';

abstract class GetAllTrendingMoviesUsecase {
  Future<List<MovieEntity>> getAllTrendingMovies(String timeWindow);
}
