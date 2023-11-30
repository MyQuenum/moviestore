import 'package:flutter/material.dart';
import 'package:moviestore/models/movies.dart';

class RatingPanel extends StatefulWidget {
  const RatingPanel({super.key, required this.movie});

  final Movie movie;

  @override
  State<RatingPanel> createState() => _RatingPanelState();
}

class _RatingPanelState extends State<RatingPanel> {
  void _rateMovie() {
    setState(() {
      widget.movie.rated = true;
      widget.movie.globalRate =
          ((widget.movie.globalRate * widget.movie.reviews) +
                  widget.movie.userRate) /
              (widget.movie.reviews + 1);
      widget.movie.reviews++;
      Navigator.of(context).pop();
    });
  }

  void _cancelReview() {
    setState(() {
      widget.movie.globalRate =
          ((widget.movie.globalRate * widget.movie.reviews) -
                  widget.movie.userRate) /
              (widget.movie.reviews - 1);
      widget.movie.userRate = 1;
      widget.movie.reviews--;
      widget.movie.rated = false;
      Navigator.of(context).pop();
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        contentPadding: EdgeInsets.all(0),
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
                      onPressed: () => setState(() {
                            widget.movie.userRate = 1;
                          }),
                      icon: const Icon(
                        Icons.star,
                        color: Color(0xFF8E94F2),
                      )),
                  IconButton(
                      iconSize: 40,
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      onPressed: () => setState(() {
                            widget.movie.userRate = 2;
                          }),
                      icon: (widget.movie.userRate >= 2
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
                      onPressed: () => setState(() {
                            widget.movie.userRate = 3;
                          }),
                      icon: (widget.movie.userRate >= 3
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
                      onPressed: () => setState(() {
                            widget.movie.userRate = 4;
                          }),
                      icon: (widget.movie.userRate >= 4
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
                      onPressed: () => setState(() {
                            widget.movie.userRate = 5;
                          }),
                      icon: (widget.movie.userRate >= 5
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
                      onPressed: () => _rateMovie(),
                      child: const Text(
                        'Rate',
                        style:
                            TextStyle(fontSize: 16, color: Color(0xFF404E7C)),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () => {
                      if (widget.movie.rated)
                        {_cancelReview()}
                      else
                        {Navigator.of(context).pop()}
                    },
                    child: (widget.movie.rated
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
        ));
  }
}
