import 'package:flutter/material.dart';
import 'package:moviestore/pages/home/components/newest.dart';
import 'package:moviestore/pages/home/components/popular.dart';

class Content extends StatelessWidget {
  Content({super.key});

  final categories = [
    {
      'image': Image.asset('assets/images/sci-fi-movies.png'),
      'label': 'Sci-fi',
      'color': const Color(0xFF251F47)
    },
    {
      'image': Image.asset('assets/images/action-movies.png'),
      'label': 'Action',
      'color': const Color(0xFF404E7C),
    },
    {
      'image': Image.asset('assets/images/comedy-movies.png'),
      'label': 'Comedy',
      'color': const Color(0xFF8E94F2)
    },
    {
      'image': Image.asset('assets/images/drama-movies.png'),
      'label': 'Drama',
      'color': const Color(0xFF260F26),
    },
    {
      'image': Image.asset('assets/images/fantasy-movies.png'),
      'label': 'Fantasy',
      'color': Colors.white,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          color: Color(0xFFF9F9F9)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 170,
            child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) => Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: categories[index]['color'] as Color,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                              border: Border.all(width: 1)),
                          child: SizedBox(
                            height: 60,
                            width: 60, // Définissez la hauteur souhaitée
                            child: categories[index]['image'] as Image,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          categories[index]['label'] as String,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF260F26),
                              fontSize: 16),
                        )
                      ],
                    )),
                separatorBuilder: ((context, index) =>
                    const SizedBox(width: 30)),
                itemCount: categories.length),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const Text(
              "Popular movies",
              style: TextStyle(
                  color: Color.fromARGB(178, 38, 15, 38),
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          PopularMovies(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const Text(
              "Newest",
              style: TextStyle(
                  color: Color.fromARGB(178, 38, 15, 38),
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          Newest()
        ],
      ),
    );
  }
}
