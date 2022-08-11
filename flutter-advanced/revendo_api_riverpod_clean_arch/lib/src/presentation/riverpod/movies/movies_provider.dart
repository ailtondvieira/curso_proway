import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:revendo_api_riverpod_clean_arch/src/domain/usecases/get_all_trending_movies/get_all_trending_movies_usecase_imp.dart';
import 'package:revendo_api_riverpod_clean_arch/src/presentation/riverpod/movies/movies_notifier.dart';

final dioProvider = Provider(
  (ref) => Dio(),
);

final moviesUseCaseProvider = Provider(
  (ref) => GetAllTrendingMoviesUsecaseImp(_repository),
);

final moviesNotifierProvider = StateNotifierProvider(
  (ref) => MoviesNotifier(ref.watch(moviesUseCaseProvider)),
);
