import 'package:flutter/material.dart';

class MovieImages extends StatelessWidget {
  const MovieImages({super.key, required this.images});

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) => ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                child: Image.asset(
                  images[index],
                ),
              )),
          separatorBuilder: ((context, index) => const SizedBox(width: 20)),
          itemCount: images.length),
    );
  }
}
