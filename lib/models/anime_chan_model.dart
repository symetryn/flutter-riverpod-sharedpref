class AnimeChan {
  final String anime;
  final String character;
  final String quote;

  AnimeChan({
    required this.anime,
    required this.character,
    required this.quote,
  });

  factory AnimeChan.fromMap(dynamic response) {
    return AnimeChan(
      anime: response["anime"],
      character: response["character"],
      quote: response["quote"],
    );
  }
}
