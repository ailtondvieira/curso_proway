import 'package:api_filmes/anime_facts/fact_repository.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'fact_model.dart';

class FactNotifier extends StateNotifier<List<FactModel>> {
  FactNotifier() : super([]) {
    getAllFactsFromAnime("fma_brotherhood");
  }

  final FactRepository _factRepository = FactRepository(dio: Dio());

  getAllFactsFromAnime(String anime) async {
    state = await _factRepository.getAllFactsFromAnime(anime);
  }
}
