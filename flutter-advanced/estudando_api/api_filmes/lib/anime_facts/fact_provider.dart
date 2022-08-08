import 'package:api_filmes/anime_facts/fact_model.dart';
import 'package:api_filmes/anime_facts/fact_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final factProvider = StateNotifierProvider<FactNotifier, List<FactModel>>(
  (ref) => FactNotifier(),
);
