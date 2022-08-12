import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:revendo_api_riverpod_clean_arch/src/presentation/riverpod/movies/movies_provider.dart';

class DrawerMovies extends HookConsumerWidget {
  const DrawerMovies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Drawer(
      child: ListView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 103, 103, 103),
            ),
            child: Text(
              'M',
              style: TextStyle(fontSize: 100),
            ),
          ),
          ListTile(
            title: const Text('Trazer filmes diários'),
            onTap: () {
              ref.read(moviesNotifierProvider.notifier).getAllTrendingMovies('day');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Trazer filmes semanais'),
            onTap: () {
              ref.read(moviesNotifierProvider.notifier).getAllTrendingMovies("week");
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
