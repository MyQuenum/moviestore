import 'package:flutter/material.dart';
import 'package:moviestore/pages/home/components/home_content.dart';
import 'package:moviestore/pages/home/components/header.dart';
import 'package:moviestore/pages/home/components/search_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF404E7C),
      appBar: AppBar(
        backgroundColor: const Color(0xFF404E7C),
        title: Text('moviestore .',
            style: GoogleFonts.lobster(
                fontWeight: FontWeight.bold,
                color: const Color(0xFFF9F9F9),
                fontSize: 24)),
      ),
      body: SingleChildScrollView(
          child: Stack(
        children: [
          Transform(
              transform: Matrix4.identity()..rotateZ(20),
              origin: const Offset(150, 50),
              child: Image.asset(
                'assets/images/moviepic2.png',
                width: 200,
              )),
          Positioned(
            right: -50,
            top: 10,
            child: Transform(
                transform: Matrix4.identity()..rotateZ(0),
                origin: const Offset(180, 100),
                child: Image.asset(
                  'assets/images/moviepic.png',
                  width: 200,
                )),
          ),
          Column(
            children: [
              const Header(),
              const SearchSection(),
              Content(),
            ],
          ),
        ],
      )),
      bottomNavigationBar: NavigationBar(),
    );
  }

  // ignore: non_constant_identifier_names
  Widget NavigationBar() {
    return Container(
      color: const Color(0xFFF9F9F9),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 5),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          child: BottomNavigationBar(
            selectedItemColor: const Color(0xFF251F47),
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(label: 'My List', icon: Icon(Icons.list)),
              BottomNavigationBarItem(
                  label: 'Downloads', icon: Icon(Icons.download_done)),
              BottomNavigationBarItem(
                  label: 'Settings', icon: Icon(Icons.settings))
            ],
          ),
        ),
      ),
    );
  }
}
