import 'package:movies_app_challenge/models/cast.dart';

class Movie {
  String title;
  String cover;

  double rating;

  double reviews;

  double metascore;
  double criticReviews;

  String summary;

  List<String> categories;
  List<Cast> cast;

  Movie({
    required this.title,
    required this.cover,
    required this.rating,
    required this.reviews,
    required this.metascore,
    required this.criticReviews,
    required this.summary,
    required this.categories,
    required this.cast
  });
}