import 'package:flutter/material.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
      child: Stack(
        children: [
          TextField(
            cursorColor: const Color(0xFF404E7C),
            decoration: InputDecoration(
                hintText: 'Black Panther: Wakan...',
                hintStyle: TextStyle(color: Colors.grey.withOpacity(0.7)),
                prefixIcon: const Icon(
                  Icons.search,
                  size: 30,
                ),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                fillColor: const Color(0xFFF9F9F9),
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide:
                        const BorderSide(width: 0, style: BorderStyle.none))),
          ),
          Positioned(
              top: 10,
              right: 20,
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFF404E7C)),
                  padding: const EdgeInsets.all(5),
                  child: const Icon(
                    Icons.mic_outlined,
                    color: Color(0xFFF9F9F9),
                  )))
        ],
      ),
    );
  }
}
