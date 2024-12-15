import 'package:flutter/material.dart';
import '../services/api_services.dart';
import '../models/joke_model.dart';
import '../widgets/joke_list_widget.dart';

class JokesScreen extends StatelessWidget {
  final String category;

  JokesScreen({required this.category});

  final ApiService _apiService = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$category Jokes'),
      ),
      body: FutureBuilder<List<Joke>>(
        future: _apiService.fetchJokesByType(category),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            final jokes = snapshot.data!;
            return JokeListWidget(jokes: jokes);
          }
        },
      ),
    );
  }
}
