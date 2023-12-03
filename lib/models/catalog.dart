import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:moviestore/models/movies.dart';

class MoviesCatalog extends ChangeNotifier {
  final List<Movie> _popularMovies = Movie.popularMovies();
  final List<Movie> _newestMovies = Movie.newestMovies();
  late Movie _selectedMovie;

  UnmodifiableListView<Movie> get popularMovies =>
      UnmodifiableListView(_popularMovies);

  UnmodifiableListView<Movie> get newestMovies =>
      UnmodifiableListView(_newestMovies);

  Movie get selectedMovie => _selectedMovie;

  void selectMovie(Movie movie) {
    _selectedMovie = movie;
    notifyListeners();
  }

  void setRate(num rate){
    _selectedMovie.userRate = rate;
    notifyListeners();
  }

  void rateMovie() {
    _selectedMovie.rated = true;
    _selectedMovie.globalRate =
        ((_selectedMovie.globalRate * _selectedMovie.reviews) +
                _selectedMovie.userRate) /
            (_selectedMovie.reviews + 1);
    _selectedMovie.reviews++;
    notifyListeners();
  }

  void cancelReview() {
    _selectedMovie.globalRate =
        ((_selectedMovie.globalRate * _selectedMovie.reviews) -
                _selectedMovie.userRate) /
            (_selectedMovie.reviews - 1);
    _selectedMovie.userRate = 1;
    _selectedMovie.reviews--;
    _selectedMovie.rated = false;
    notifyListeners();
  }
}
