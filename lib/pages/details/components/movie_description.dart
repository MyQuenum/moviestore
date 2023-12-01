import 'package:flutter/material.dart';
import 'package:moviestore/models/catalog.dart';
import 'package:readmore/readmore.dart';
import 'package:provider/provider.dart';

class MovieDescription extends StatelessWidget {
  const MovieDescription({super.key});


  @override
  Widget build(BuildContext context) {
    return Consumer<MoviesCatalog>(
        builder: (context, catalog, child) => ReadMoreText(
              catalog.selectedMovie.desc,
              trimLines: 2,
              trimMode: TrimMode.Line,
              trimCollapsedText: '  show more',
              colorClickableText: const Color(0xFF8E94F2),
              trimExpandedText: '  show less',
              style: const TextStyle(color: Color.fromARGB(156, 37, 31, 71)),
              textAlign: TextAlign.justify,
            ));
  }
}
