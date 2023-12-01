import 'package:flutter/material.dart';
import 'package:moviestore/models/catalog.dart';
import 'package:moviestore/models/movies.dart';
import 'package:moviestore/pages/details/components/movie_info.dart';
import 'package:moviestore/pages/details/components/movie_section_top.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.movie});

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      body: ChangeNotifierProvider(
        create: (context) => MoviesCatalog(),
        child: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
              delegate: MovieSectionTop(
                  topMaxHeight: 440,
                  contentRoundedBarHeight: 30)),
          SliverToBoxAdapter(
            child: MovieInfo(movie: movie)
          )
        ],
      ),
      ),
    );
  }
}
