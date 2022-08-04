import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'movie_model.dart';
import 'movie_repository.dart';

class MoviesPage extends StatefulWidget {
  const MoviesPage({Key? key}) : super(key: key);

  @override
  State<MoviesPage> createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  MovieRepository repository = MovieRepository(dio: Dio());
  late Future<List<MovieModel>> movies;

  @override
  void initState() {
    movies = repository.getAllMovies();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        future: movies,
        builder: (context, AsyncSnapshot<List<MovieModel>> snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) {
                            return Scaffold(
                              appBar: AppBar(),
                              body: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () => Navigator.of(context).pop(),
                                      child: Image.network(
                                          snapshot.data![index].movieBanner),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      snapshot.data![index].title,
                                      style: const TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Director: ${snapshot.data![index].director}",
                                      style: const TextStyle(fontSize: 15),
                                    ),
                                    Text(
                                      "Producer: ${snapshot.data![index].producer}",
                                      style: const TextStyle(fontSize: 15),
                                    ),
                                    Text(
                                      "Score: ${snapshot.data![index].rtScore}",
                                      style: const TextStyle(fontSize: 15),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "Description: ${snapshot.data![index].description}",
                                      style: const TextStyle(fontSize: 23),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ));
                      },
                      child: Image.network(
                        snapshot.data![index].image,
                        scale: 0.5,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          snapshot.data![index].title,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "${snapshot.data![index].runningTime} min",
                      style: const TextStyle(fontSize: 18),
                    ),
                    Text(
                      "${snapshot.data![index].originalTitle} / ${snapshot.data![index].originalTitleRomanised}",
                      style: const TextStyle(fontSize: 12),
                    ),
                    Text(
                      "Release Date: ${snapshot.data![index].releaseDate}",
                      style: const TextStyle(fontSize: 12),
                    ),
                    Text(
                      "Director: ${snapshot.data![index].director}",
                      style: const TextStyle(fontSize: 12),
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
