import 'package:flutter/material.dart';
import 'package:moviestore/models/movies.dart';

class MovieHeader extends StatelessWidget {
  const MovieHeader({super.key, required this.movie});

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          child: Image.asset(
            movie.iconImage,
            height: 90,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                movie.title.length > 18
                    ? '${movie.title.substring(0, 18)}...' // Tronquer le titre à 14 caractères
                    : movie.title,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  movie.category,
                  style: const TextStyle(color: Colors.grey),
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.star,
                            size: 20, color: Color(0xFF8E94F2)),
                        Text(
                          movie.rate.toString(),
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Row(
                      children: [
                        const Icon(Icons.remove_red_eye,
                            size: 20, color: Color(0xFF251F47)),
                        Text(
                          ' ${movie.views}',
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
