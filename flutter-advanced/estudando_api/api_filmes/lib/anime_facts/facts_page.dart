import 'package:api_filmes/anime_facts/fact_model.dart';
import 'package:api_filmes/anime_facts/fact_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class FactsPage extends StatefulWidget {
  const FactsPage({Key? key}) : super(key: key);

  @override
  State<FactsPage> createState() => _FactsPageState();
}

class _FactsPageState extends State<FactsPage> {
  FactRepository repository = FactRepository(dio: Dio());
  late Future<List<FactModel>> facts;

  @override
  void initState() {
    facts = repository.getAllFactsFromAnime("fma_brotherhood");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: FutureBuilder(
        future: facts,
        builder: (context, AsyncSnapshot<List<FactModel>> snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Text(
                              "Fact ${snapshot.data![index].factId}/${snapshot.data!.length}: ${snapshot.data![index].fact}",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
