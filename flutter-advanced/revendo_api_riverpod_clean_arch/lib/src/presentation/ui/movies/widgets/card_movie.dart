import 'package:flutter/material.dart';

import '../../../../../shared/utils/format_date.dart';
import '../../../../../shared/utils/get_color_progress.dart';
import '../../../../domain/entities/movie_entity.dart';

class CardMovie extends StatelessWidget {
  const CardMovie({Key? key, required this.movie}) : super(key: key);

  final MovieEntity movie;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                "https://image.tmdb.org/t/p/w300/${movie.posterPath}",
              ),
            ),
            Positioned(
              left: 40,
              bottom: -30,
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: const Color.fromRGBO(0, 0, 0, 0.6),
                    child: TweenAnimationBuilder(
                      tween: Tween<double>(begin: 0.0, end: movie.voteAverage / 10),
                      duration: const Duration(seconds: 2),
                      builder: (context, double value2, child) {
                        return SizedBox(
                          height: 50,
                          width: 50,
                          child: CircularProgressIndicator(
                            strokeWidth: 5,
                            value: value2,
                            color: getColorProgress(movie.voteAverage / 10),
                          ),
                        );
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        (movie.voteAverage * 10).toStringAsFixed(0),
                        style: const TextStyle(fontSize: 20),
                      ),
                      const Text(
                        '%',
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              right: 20,
              top: 15,
              child: InkWell(
                onTap: () {},
                child: const CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 20,
                  child: Icon(
                    Icons.more_horiz,
                    size: 30,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 30),
        SizedBox(
          width: 300,
          child: Column(
            children: [
              Text(
                movie.title,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 18),
              ),
              Text(
                formatDate(movie.releaseDate),
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
