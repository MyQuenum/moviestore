import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 25, right: 25),
      child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome on moviestore.,',
                  style: TextStyle(
                      color: Color(0xFFF9F9F9),
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'What would you like to watch?',
                  style: TextStyle(color: Color(0xFFF9F9F9), fontSize: 19),
                )
              ],
            ),
            // CircleAvatar(
            //   child: Image.asset('assets/images/profileAvatar.png'),
            // )
          ]),
    );
  }
}
