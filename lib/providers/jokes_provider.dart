import 'package:flutter/material.dart';
import '../services/api_services.dart';
import '../models/joke_model.dart';

class JokesProvider with ChangeNotifier {
  final ApiService _apiService = ApiService();

  List<String>? _cachedCategories;

  final Map<String, List<Joke>> _cachedCategoryJokes = {};

  Joke? _cachedRandomJoke;

  Future<List<String>> fetchCategories() async {
    if (_cachedCategories != null) {
      return _cachedCategories!;
    }

    final categories = await _apiService.fetchCategories();
    _cachedCategories = categories;
    return categories;
  }

  Future<List<Joke>> fetchJokesByType(String category) async {
    if (_cachedCategoryJokes.containsKey(category)) {
      return _cachedCategoryJokes[category]!;
    }

    final jokes = await _apiService.fetchJokesByType(category);
    _cachedCategoryJokes[category] = jokes;
    return jokes;
  }

  Future<Joke> fetchRandomJoke() async {
    if (_cachedRandomJoke != null) {
      return _cachedRandomJoke!;
    }

    final joke = await _apiService.fetchRandomJoke();
    _cachedRandomJoke = joke;
    return joke;
  }
}