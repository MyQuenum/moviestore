import 'package:flutter/material.dart';
import 'package:moviestore/models/catalog.dart';
import 'package:provider/provider.dart';

class MovieImages extends StatelessWidget {
  const MovieImages({super.key});


  @override
  Widget build(BuildContext context) {
    return Consumer<MoviesCatalog>(builder: (context, catalog, child) => SizedBox(
      height: 170,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) => ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                child: Image.asset(
                  catalog.selectedMovie.images[index],
                ),
              )),
          separatorBuilder: ((context, index) => const SizedBox(width: 20)),
          itemCount: catalog.selectedMovie.images.length),
    ));
  }
}
