import 'package:revendo_api_riverpod_clean_arch/src/domain/repositories/get_all_trending_movies_repository.dart';
import 'package:revendo_api_riverpod_clean_arch/src/domain/usecases/get_all_trending_movies/get_all_trending_movies_usecase.dart';

import '../../entities/movie_entity.dart';

class GetAllTrendingMoviesUsecaseImp implements GetAllTrendingMoviesUsecase {
  final GetAllTrendingMoviesRepository _repository;

  GetAllTrendingMoviesUsecaseImp(this._repository);

  @override
  Future<List<MovieEntity>> getAllTrendingMovies(String timeWindow) async {
    return await _repository.getAllTrendingMovies(timeWindow);
  }
}
