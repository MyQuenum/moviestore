class Movie {
  String bgImage;
  String iconImage;
  String title;
  String category;
  num views;
  double rate;
  num likes;
  String desc;
  List<String> images;

  Movie(
    this.bgImage,
    this.iconImage,
    this.title,
    this.category,
    this.views,
    this.rate,
    this.likes,
    this.desc,
    this.images,
  );

  static List<Movie> popularMovies() {
    return [
      Movie(
          'assets/images/spidermanBG.jpg',
          'assets/images/spidermanIcon.jpg',
          'Spiderman: Across the Spiderverse',
          'Sci-fi',
          258000,
          4.6,
          150087,
          "An animated masterpiece, `\"Spider-Man: Across the Spider-Verse`\" follows Miles Morales as he discovers his Spidey powers and teams up with other Spider-People from alternate dimensions. Visually stunning and critically acclaimed.",
          ['assets/images/spiderman1.jpg', 'assets/images/spiderman2.jpg']),
      Movie(
          'assets/images/blackPantherBG.jpg',
          'assets/images/blackPantherIcon.jpg',
          'Black Panther: Wakanda Forever',
          'Sci-fi',
          148000,
          4.8,
          138047,
          "Continuing the legacy, the film explores Wakanda's future after T'Challa's death. Tensions rise as Wakanda faces external threats. Namor, the Sub-Mariner, gets involved, promising an emotional homage.",
          [
            'assets/images/blackPanther1.jpg',
            'assets/images/blackPanther2.jpg'
          ]),
      Movie(
          'assets/images/oppenheimerBG.jpeg',
          'assets/images/oppenheimerIcon.jpg',
          'Oppenheimer',
          'Drama',
          43407,
          4.1,
          10254,
          "Christopher Nolan's 'Oppenheimer' centers around physicist J. Robert Oppenheimer in a Cold War conspiracy. The film explores Oppenheimer's complex life and contributions amidst political intrigue",
          ['assets/images/oppenheimer1.jpg', 'assets/images/oppenheimer2.jpg'])
    ];
  }

  static List<Movie> newestMovies() {
    return [
      Movie(
          'assets/images/barbieBG.jpg',
          'assets/images/barbieIcon.jpg',
          'Barbie',
          'Fantasy',
          218900,
          4.0,
          101087,
          "A 2023 fantasy comedy film directed by Greta Gerwig, 'Barbie' is inspired by Mattel's iconic fashion dolls. Gerwig infuses a feminist perspective into the story, offering a unique take on the classic character.",
          ['assets/images/barbie1.jpeg', 'assets/images/barbie2.jpg']),
      Movie(
          'assets/images/oppenheimerBG.jpeg',
          'assets/images/oppenheimerIcon.jpg',
          'Oppenheimer',
          'Drama',
          43407,
          4.1,
          10254,
          "Christopher Nolan's 'Oppenheimer' centers around physicist J. Robert Oppenheimer in a Cold War conspiracy. The film explores Oppenheimer's complex life and contributions amidst political intrigue",
          ['assets/images/oppenheimer1.jpg', 'assets/images/oppenheimer2.jpg']),
      Movie(
          'assets/images/theLittleMermaidBG.jpeg',
          'assets/images/theLittleMermaidIcon.jpg',
          'The little mermaid',
          'Fantasy',
          43407,
          4.1,
          10254,
          "In this live-action adaptation, Halle Bailey stars as Ariel. Director Rob Marshall describes the character as a seductive femme fatale. The film promises a fresh take on the beloved underwater tale.",
          [
            'assets/images/theLittleMermaid1.jpg',
            'assets/images/theLittleMermaid2.jpg'
          ])
    ];
  }
}
