import 'package:api_filmes/anime_facts/fact_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FactsPage extends StatefulHookConsumerWidget {
  const FactsPage({Key? key}) : super(key: key);

  @override
  ConsumerState<FactsPage> createState() => _FactsPageConsumerState();
}

class _FactsPageConsumerState extends ConsumerState<FactsPage> {
  // FactRepository repository = FactRepository(dio: Dio());
  // late Future<List<FactModel>> facts;

  // @override
  // void initState() {
  //   facts = repository.getAllFactsFromAnime("fma_brotherhood");
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    final facts = ref.watch(factProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: Visibility(
          replacement: const CircularProgressIndicator(),
          visible: facts.isNotEmpty,
          child: ListView.builder(
            itemCount: facts.length,
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
                              "Fact ${facts[index].factId}/${facts.length}: ${facts[index].fact}",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        // child: FutureBuilder(
        //   future: facts,
        //   builder: (context, Asyncfacts<List<FactModel>> facts) {
        //     if (!facts.hasData) {
        //       return const Center(
        //         child: CircularProgressIndicator(),
        //       );
        //     }
        //     return ListView.builder(
        //       itemCount: facts..length,
        //       itemBuilder: (context, index) {
        //         return Padding(
        //           padding: const EdgeInsets.all(10),
        //           child: Column(
        //             children: [
        //               Card(
        //                 child: Padding(
        //                   padding: const EdgeInsets.all(16.0),
        //                   child: Column(
        //                     children: [
        //                       Text(
        //                         "Fact ${facts.[index].factId}/${facts..length}: ${facts.[index].fact}",
        //                       ),
        //                     ],
        //                   ),
        //                 ),
        //               ),
        //             ],
        //           ),
        //         );
        //       },
        //     );
        //   },
        // ),
      ),
    );
  }
}
