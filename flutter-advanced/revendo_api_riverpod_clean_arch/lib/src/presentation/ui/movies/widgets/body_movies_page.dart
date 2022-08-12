import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:revendo_api_riverpod_clean_arch/src/presentation/riverpod/movies/movies_provider.dart';

import 'card_movie.dart';

class BodyMoviesPage extends HookConsumerWidget {
  const BodyMoviesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movies = ref.watch(moviesNotifierProvider);
    return Center(
      child: Visibility(
        visible: movies.isNotEmpty,
        replacement: const Center(
          child: CircularProgressIndicator(
            color: Color.fromARGB(255, 214, 32, 90),
            strokeWidth: 6.0,
          ),
        ),
        child: SizedBox(
          height: 800,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.all(15.0),
            scrollDirection: Axis.horizontal,
            itemCount: movies.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(15.0),
                child: CardMovie(
                  movie: movies[index],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
