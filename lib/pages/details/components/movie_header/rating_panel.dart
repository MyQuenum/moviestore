import 'package:flutter/material.dart';
import 'package:moviestore/models/catalog.dart';
import 'package:provider/provider.dart';

class RatingPanel extends StatelessWidget {
  const RatingPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MoviesCatalog>(builder: (context, catalog, child) => AlertDialog(
        contentPadding: const EdgeInsets.all(0),
        title: const Text(
          'Rate this movie',
          textAlign: TextAlign.center,
        ),
        content: SizedBox(
          height: 150,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      iconSize: 40,
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      onPressed: () => catalog.selectedMovie.userRate = 1,
                      icon: const Icon(
                        Icons.star,
                        color: Color(0xFF8E94F2),
                      )),
                  IconButton(
                      iconSize: 40,
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      onPressed: () => catalog.selectedMovie.userRate = 2,
                      icon: (catalog.selectedMovie.userRate >= 2
                          ? const Icon(
                              Icons.star,
                              color: Color(0xFF8E94F2),
                            )
                          : const Icon(
                              Icons.star_border_outlined,
                              color: Colors.grey,
                            ))),
                  IconButton(
                      iconSize: 40,
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      onPressed: () => catalog.selectedMovie.userRate = 3,
                      icon: (catalog.selectedMovie.userRate >= 3
                          ? const Icon(
                              Icons.star,
                              color: Color(0xFF8E94F2),
                            )
                          : const Icon(
                              Icons.star_border_outlined,
                              color: Colors.grey,
                            ))),
                  IconButton(
                      iconSize: 40,
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      onPressed: () => catalog.selectedMovie.userRate = 4,
                      icon: (catalog.selectedMovie.userRate >= 4
                          ? const Icon(
                              Icons.star,
                              color: Color(0xFF8E94F2),
                            )
                          : const Icon(
                              Icons.star_border_outlined,
                              color: Colors.grey,
                            ))),
                  IconButton(
                      iconSize: 40,
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      onPressed: () => catalog.selectedMovie.userRate = 5,
                      icon: (catalog.selectedMovie.userRate >= 5
                          ? const Icon(
                              Icons.star,
                              color: Color(0xFF8E94F2),
                            )
                          : const Icon(
                              Icons.star_border_outlined,
                              color: Colors.grey,
                            )))
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    child: TextButton(
                      onPressed: () => catalog.rateMovie(),
                      child: const Text(
                        'Rate',
                        style:
                            TextStyle(fontSize: 16, color: Color(0xFF404E7C)),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () => {
                      if (catalog.selectedMovie.rated)
                        catalog.cancelReview()
                      else
                        {Navigator.of(context).pop()}
                    },
                    child: (catalog.selectedMovie.rated
                        ? const Text(
                            'Cancel review',
                            style: TextStyle(color: Colors.red, fontSize: 16),
                          )
                        : const Text(
                            'Cancel',
                            style: TextStyle(color: Colors.grey),
                          )),
                  )
                ],
              )
            ],
          ),
        )));
  }
}