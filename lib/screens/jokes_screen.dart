import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/joke_model.dart';
import '../widgets/joke_list_widget.dart';
import '../providers/jokes_provider.dart';

class JokesScreen extends StatelessWidget {
  final String category;

  JokesScreen({required this.category});

  @override
  Widget build(BuildContext context) {
    final jokesProvider = Provider.of<JokesProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text('$category Jokes'),
      ),
      body: FutureBuilder<List<Joke>>(
        future: jokesProvider.fetchJokesByType(category),
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
