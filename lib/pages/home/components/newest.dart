import 'package:flutter/material.dart';
import 'package:moviestore/models/movies.dart';
import 'package:moviestore/pages/details/details.dart';

class Newest extends StatelessWidget {
  Newest({super.key});

  final List<Movie> newestMovies = Movie.newestMovies();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          ...newestMovies
              .map((movie) => Container(
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) =>
                                      DetailPage(movie: movie))),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              movie.iconImage,
                              width: 60,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                movie.title,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Color(0xFF251F47)),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        movie.category,
                                        style: const TextStyle(
                                            fontSize: 14,
                                            color: Color.fromARGB(
                                                188, 37, 31, 71)),
                                      ),
                                      const Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            size: 15,
                                            color: Color(0xFF8E94F2),
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 15,
                                            color: Color(0xFF8E94F2),
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 15,
                                            color: Color(0xFF8E94F2),
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 15,
                                            color: Color(0xFF8E94F2),
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 15,
                                            color: Colors.grey,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        color: const Color(0xFF404E7C),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: const Row(
                                      children: [
                                        Icon(
                                          Icons.play_arrow_outlined,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          'Watch Trailer',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ))
              .toList(),
        ],
      ),
    );
  }
}
