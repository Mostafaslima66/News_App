class NewstileModel {
  final String text;
  final String? Subtext;
  final String? image;
  NewstileModel(
      {required this.text, required this.Subtext, required this.image});
  factory NewstileModel.fromjson(json) {
    return NewstileModel(
      text: json['title'],
      Subtext: json['description'],
      image: json['urlToImage'],
    );
  }
}
