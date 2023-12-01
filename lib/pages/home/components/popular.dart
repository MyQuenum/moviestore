import 'package:flutter/material.dart';
import 'package:moviestore/models/catalog.dart';
import 'package:moviestore/pages/details/details.dart';
import 'package:provider/provider.dart';

class PopularMovies extends StatelessWidget {
  const PopularMovies({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MoviesCatalog>(builder: (context, catalog, child) => SizedBox(
      height: 200,
      child: ListView.separated(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) => GestureDetector(
            onTap: () => {
              catalog.selectMovie(catalog.popularMovies[index]),
              Navigator.of(context).push(MaterialPageRoute(builder: ((context) => DetailPage(movie: catalog.popularMovies[index]))))
            },
                child: Card(
                  elevation: 7,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(catalog.popularMovies[index].images[0])),
                  ),
                ),
              )),
          separatorBuilder: ((context, index) => const SizedBox(
                width: 15,
              )),
          itemCount: catalog.popularMovies.length),
    ));
  }
}
