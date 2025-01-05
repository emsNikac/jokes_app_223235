import 'package:flutter/material.dart';
import '../models/joke_model.dart';

class FavoriteJokesProvider with ChangeNotifier {
  final List<Joke> _favoriteJokes = [];

  List<Joke> get favoriteJokes => List.unmodifiable(_favoriteJokes);

  void toggleFavorite(Joke joke) {
    joke.inFavorite = !joke.inFavorite;

    if (joke.inFavorite) {
      _favoriteJokes.add(joke);
    } else {
      _favoriteJokes.removeWhere((favJoke) => favJoke.setup == joke.setup);
    }

    notifyListeners();
  }

  bool isFavorite(Joke joke) {
    return joke.inFavorite;
  }
}
