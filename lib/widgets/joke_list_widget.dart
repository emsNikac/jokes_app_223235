import 'package:flutter/material.dart';
import '../models/joke_model.dart';
import '../screens/joke_detail_screen.dart';

class JokeListWidget extends StatelessWidget {
  final List<Joke> jokes;

  JokeListWidget({required this.jokes});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: jokes.length,
      itemBuilder: (context, index) {
        final joke = jokes[index];
        return Card(
          margin: const EdgeInsets.all(8.0),
          child: ListTile(
            title: Text(
              joke.setup,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(joke.punchline),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => JokeDetailScreen(joke: joke),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
