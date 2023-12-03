import 'package:flutter/material.dart';
import 'package:moviestore/pages/details/components/movie_info.dart';
import 'package:moviestore/pages/details/components/movie_section_top.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
              delegate: MovieSectionTop(
                  topMaxHeight: 440,
                  contentRoundedBarHeight: 30)),
          const SliverToBoxAdapter(
            child: MovieInfo()
          )
        ],
      ),
    );
  }
}
