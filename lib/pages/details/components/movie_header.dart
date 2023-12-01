import 'package:flutter/material.dart';
import 'package:moviestore/models/catalog.dart';
import 'package:moviestore/pages/details/components/movie_header/rating_panel.dart';
import 'package:provider/provider.dart';

class MovieHeader extends StatelessWidget {
  const MovieHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MoviesCatalog>(
        builder: (context, catalog, child) => Row(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  child: Image.asset(
                    catalog.selectedMovie.iconImage,
                    height: 90,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        catalog.selectedMovie.title.length > 18
                            ? '${catalog.selectedMovie.title.substring(0, 18)}...' // Tronquer le titre à 14 caractères
                            : catalog.selectedMovie.title,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          catalog.selectedMovie.category,
                          style: const TextStyle(color: Colors.grey),
                        ),
                        Row(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 35,
                                  child: IconButton(
                                    onPressed: () => {
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return const RatingPanel();
                                          })
                                    },
                                    icon: (catalog.selectedMovie.rated
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
                                  catalog.selectedMovie.globalRate.toStringAsFixed(1),
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            Row(
                              children: [
                                const Icon(Icons.remove_red_eye,
                                    size: 20, color: Color(0xFF251F47)),
                                Text(
                                  ' ${catalog.selectedMovie.views}',
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    )
                  ],
                )
              ],
            ));
  }
}
