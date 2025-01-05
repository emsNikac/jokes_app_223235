class Joke {
  final String type;
  final String setup;
  final String punchline;
  bool inFavorite;

  Joke({
    required this.type,
    required this.setup,
    required this.punchline,
    this.inFavorite = false,
  });

  factory Joke.fromJson(Map<String, dynamic> json) {
    return Joke(
      type: json['type'],
      setup: json['setup'],
      punchline: json['punchline'],
      inFavorite: false,
    );
  }
}
