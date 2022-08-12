import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:revendo_api_riverpod_clean_arch/src/data/datasources/remote/get_all_trending_movies_remote_datasource_imp.dart';
import 'package:revendo_api_riverpod_clean_arch/src/data/repositories/get_all_trending_movies_repository_imp.dart';
import 'package:revendo_api_riverpod_clean_arch/src/domain/entities/movie_entity.dart';
import 'package:revendo_api_riverpod_clean_arch/src/domain/usecases/get_all_trending_movies/get_all_trending_movies_usecase_imp.dart';
import 'package:revendo_api_riverpod_clean_arch/src/presentation/riverpod/movies/movies_notifier.dart';

final dioProvider = Provider(
  (ref) => Dio(),
);

final moviesDatasourceProvider = Provider(
  (ref) => GetAllTrendingMoviesRemoteDatasourceImp(
    ref.watch(dioProvider),
  ),
);

final moviesRepositoryProvider = Provider(
  (ref) => GetAllTrendingMoviesRepositoryImp(
    ref.watch(moviesDatasourceProvider),
  ),
);

final moviesUseCaseProvider = Provider(
  (ref) => GetAllTrendingMoviesUsecaseImp(
    ref.watch(moviesRepositoryProvider),
  ),
);

final moviesNotifierProvider = StateNotifierProvider<MoviesNotifier, List<MovieEntity>>(
  (ref) => MoviesNotifier(
    ref.watch(moviesUseCaseProvider),
  ),
);
