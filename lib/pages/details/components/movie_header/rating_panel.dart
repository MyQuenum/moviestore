import 'package:flutter/material.dart';
import 'package:moviestore/models/catalog.dart';
import 'package:provider/provider.dart';

class RatingPanel extends StatefulWidget {
  const RatingPanel({super.key});

  @override
  State<RatingPanel> createState() => _RatingPanelState();
}

class _RatingPanelState extends State<RatingPanel> {
  late int _currentRate;
  late bool _isRated;

  @override
  @override
  void initState() {
    super.initState();
    _currentRate = context.read<MoviesCatalog>().selectedMovie.userRate;
    _isRated = context.read<MoviesCatalog>().selectedMovie.rated;
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<MoviesCatalog>(
        builder: (context, catalog, child) => AlertDialog(
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
                          onPressed: () => {
                                setState(() {
                                  _currentRate = 1;
                                })
                              },
                          icon: const Icon(
                            Icons.star,
                            color: Color(0xFF8E94F2),
                          )),
                      IconButton(
                          iconSize: 40,
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          onPressed: () => {
                                setState(() {
                                  _currentRate = 2;
                                })
                              },
                          icon: (_currentRate >= 2
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
                          onPressed: () => {
                                setState(() {
                                  _currentRate = 3;
                                })
                              },
                          icon: (_currentRate >= 3
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
                          onPressed: () => {
                                setState(() {
                                  _currentRate = 4;
                                })
                              },
                          icon: (_currentRate >= 4
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
                          onPressed: () => {
                                setState(() {
                                  _currentRate = 5;
                                })
                              },
                          icon: (_currentRate >= 5
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
                          onPressed: () => {
                            catalog.rateMovie(_currentRate),
                            Navigator.of(context).pop()
                          },
                          child: const Text(
                            'Rate',
                            style: TextStyle(
                                fontSize: 16, color: Color(0xFF404E7C)),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () => {
                          if (_isRated) {catalog.cancelReview()},
                          Navigator.of(context).pop()
                        },
                        child: (_isRated
                            ? const Text(
                                'Cancel review',
                                style:
                                    TextStyle(color: Colors.red, fontSize: 16),
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
