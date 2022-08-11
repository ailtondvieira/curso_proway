import 'package:revendo_api_riverpod_clean_arch/src/data/datasources/get_all_trending_movies_datasource.dart';
import 'package:revendo_api_riverpod_clean_arch/src/domain/entities/movie_entity.dart';

import '../../domain/repositories/get_all_trending_movies_repository.dart';

class GetAllTrendingMoviesRepositoryImp implements GetAllTrendingMoviesRepository {
  final GetAllTrendingMoviesDatasource _datasource;

  GetAllTrendingMoviesRepositoryImp(this._datasource);

  @override
  Future<List<MovieEntity>> getAllTrendingMovies(String timeWindow) async {
    return await _datasource.getAllTrendingMovies(timeWindow);
  }
}
