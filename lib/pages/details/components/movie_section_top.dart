import 'package:flutter/material.dart';
import 'package:moviestore/models/movies.dart';

class MovieSectionTop extends SliverPersistentHeaderDelegate {
  MovieSectionTop(
      {required this.movie,
      required this.topMaxHeight,
      required this.contentRoundedBarHeight});

  final Movie movie;
  final double topMaxHeight;
  final double contentRoundedBarHeight;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      children: [
        Image.asset(
          movie.bgImage,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 45, horizontal: 10),
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
                color: Color.fromARGB(180, 64, 78, 124),
                shape: BoxShape.circle),
            child: const Icon(
              Icons.arrow_back,
              size: 25,
              color: Color(0xFFF9F9F9),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            height: contentRoundedBarHeight,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: Color(0xFFF9F9F9),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            // child: Container(
            //   alignment: Alignment.center,
            //   height: 5,
            //   color: Colors.red,
            //   width: 60,
            // ),
          ),
        )
      ],
    );
  }

  @override
  double get maxExtent => topMaxHeight;

  @override
  double get minExtent => 0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
