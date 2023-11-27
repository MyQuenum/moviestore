import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class MovieDescription extends StatelessWidget {
  const MovieDescription({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      description,
      trimLines: 2,
      trimMode: TrimMode.Line,
      trimCollapsedText: '  show more',
      colorClickableText: const Color(0xFF8E94F2),
      trimExpandedText: '  show less',
      style: const TextStyle(color: Color.fromARGB(156, 37, 31, 71)),
      textAlign: TextAlign.justify,
    );
  }
}
