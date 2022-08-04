import 'package:dio/dio.dart';

import 'fact_model.dart';

class FactRepository {
  final Dio dio;
  FactRepository({
    required this.dio,
  });

  Future<List<FactModel>> getAllFactsFromAnime(String anime) async {
    List<FactModel> facts = [];
    final response = await dio.get(
      "https://anime-facts-rest-api.herokuapp.com/api/v1/$anime",
    );

    facts = List.from(
      response.data!['data'].map(
        (anime) => FactModel.fromMap(anime),
      ),
    );
    print(facts);
    return facts;
  }
}
