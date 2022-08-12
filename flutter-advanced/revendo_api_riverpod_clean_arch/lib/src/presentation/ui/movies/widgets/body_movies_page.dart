import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:revendo_api_riverpod_clean_arch/src/presentation/riverpod/movies/movies_provider.dart';
import 'package:shimmer/shimmer.dart';

import 'card_movie.dart';

class BodyMoviesPage extends HookConsumerWidget {
  const BodyMoviesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movies = ref.watch(moviesNotifierProvider);
    return Center(
      child: Visibility(
        visible: movies.isNotEmpty,
        replacement: Shimmer.fromColors(
          baseColor: const Color.fromRGBO(158, 158, 158, 0.2),
          highlightColor: const Color.fromRGBO(158, 158, 158, 1),
          enabled: true,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, __) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Center(
                  child: Column(
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(10),
                            width: 300.0,
                            height: 450.0,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          const Positioned(
                            left: 40,
                            bottom: -20,
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.grey,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 30),
                      Container(
                        margin: const EdgeInsets.all(10),
                        width: 250.0,
                        height: 18.0,
                        color: Colors.grey,
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        width: 150.0,
                        height: 18.0,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              );
            },
            itemCount: 6,
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
