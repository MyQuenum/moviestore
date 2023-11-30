import 'package:flutter/material.dart';
import 'package:moviestore/models/movies.dart';
import 'package:moviestore/pages/details/components/movie_header/rating_panel.dart';

class RatingWidget extends StatefulWidget {
  const RatingWidget({super.key, required this.movie});

  final Movie movie;

  @override
  State<RatingWidget> createState() => _RatingWidgetState();
}

class _RatingWidgetState extends State<RatingWidget> {
  void toggleFavorite() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return RatingPanel(
            movie: widget.movie,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 35,
          child: IconButton(
            onPressed: () => toggleFavorite(),
            icon: (widget.movie.rated
                ? const Icon(
                    Icons.star,
                    color: Color(0xFF8E94F2),
                  )
                : const Icon(
                    Icons.star_border_outlined,
                    color: Colors.grey,
                  )),
          ),
        ),
        Text(
          widget.movie.globalRate.toStringAsFixed(1),
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
