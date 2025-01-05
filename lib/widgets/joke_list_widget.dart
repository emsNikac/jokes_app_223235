import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/joke_model.dart';
import '../screens/joke_detail_screen.dart';
import '../providers/favorite_jokes_provider.dart';

class JokeListWidget extends StatelessWidget {
  final List<Joke> jokes;

  JokeListWidget({required this.jokes});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: jokes.length,
      itemBuilder: (context, index) {
        final joke = jokes[index];

        return Consumer<FavoriteJokesProvider>(
          builder: (context, favoriteJokesProvider, child) {
            final isFavorite = joke.inFavorite;

            return Card(
              margin: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text(
                  joke.setup,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(joke.punchline),
                trailing: IconButton(
                  icon: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: isFavorite ? Colors.red : null,
                  ),
                  onPressed: () {
                    favoriteJokesProvider.toggleFavorite(joke);
                  },
                ),
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
      },
    );
  }
}
