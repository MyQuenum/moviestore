import 'package:flutter/material.dart';
import 'package:moviestore/models/movies.dart';

class PopularMovies extends StatelessWidget {
  PopularMovies({super.key});

  final List<Movie> popularMovies = Movie.popularMovies();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.separated(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) => GestureDetector(
                child: Card(
                  elevation: 7,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(popularMovies[index].images[0])),
                  ),
                ),
              )),
          separatorBuilder: ((context, index) => const SizedBox(
                width: 15,
              )),
          itemCount: popularMovies.length),
    );
  }
}
