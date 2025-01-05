import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/favorite_jokes_provider.dart';

class FavoriteJokesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final favoriteJokesProvider =
    Provider.of<FavoriteJokesProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Jokes'),
      ),
      body: favoriteJokesProvider.favoriteJokes.isEmpty
          ? Center(child: Text('No favorite jokes yet!'))
          : ListView.builder(
        itemCount: favoriteJokesProvider.favoriteJokes.length,
        itemBuilder: (context, index) {
          final joke = favoriteJokesProvider.favoriteJokes[index];
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(
                joke.setup,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(joke.punchline),
            ),
          );
        },
      ),
    );
  }
}
