import 'package:flutter/material.dart';
import 'package:moviestore/models/movies.dart';
import 'package:moviestore/pages/details/components/movie_description.dart';
import 'package:moviestore/pages/details/components/movie_images.dart';
import 'package:moviestore/pages/details/components/movie_header.dart';

class MovieInfo extends StatelessWidget {
  const MovieInfo({super.key, required this.movie});

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      // color: const Color(0xFFF9F9F9),
      color: const Color(0xFFF9F9F9),
      child: Column(
        children: [
          MovieHeader(movie: movie),
          const SizedBox(
            height: 30,
          ),
          MovieImages(images: movie.images),
          const SizedBox(
            height: 30,
          ),
          MovieDescription(description: movie.desc),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 60,
            child: ElevatedButton(
              onPressed: () => {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF404E7C),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.play_arrow_outlined,
                    color: Color(0xFFF9F9F9),
                    size: 36,
                  ),
                  Text(
                    'Play',
                    style: TextStyle(color: Color(0xFFF9F9F9), fontSize: 18),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
