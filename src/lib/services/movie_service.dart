import 'package:movies_app_challenge/models/cast.dart';
import 'package:movies_app_challenge/models/movie.dart';

class MovieService {
  List<String> getSources() {
    return [
      'In Theather',
      'Box Office',
      'Coming Soon'
    ];
  }

  List<String> getCategories() {
    return [
      'Action',
      'Crime',
      'Comedy',
      'Drama'
    ];
  }

  List<Movie> getMovies() {

    var categories = [
      'Action',
      'Biography',
      'Drama'
    ];

    var cast = [
      Cast(name: 'James Mangold', image: 'actor_1.png', character: 'Director'),
      Cast(name: 'Matt Damon', image: 'actor_2.png', character: 'Carrol'),
      Cast(name: 'Christian Bale', image: 'actor_3.png', character: 'Ken Miles'),
      Cast(name: 'Caitriona Balfe', image: 'actor_4.png', character: 'Mollie'),
    ];

    return [
      Movie(
          title: 'Avatar',
          cover: 'images/avatar.jpg',
          rating: 9.5,
          reviews: 230780,
          criticReviews: 99,
          metascore: 94,
          categories: categories,
          cast: cast,
          summary: 'A paraplegic Marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.',
      ),
      Movie(
          title: 'Ford v Ferrari',
          cover: 'images/ford_v_ferrari.jpg',
          rating: 8.4,
          reviews: 110500,
          criticReviews: 62,
          metascore: 85,
          categories: categories,
          cast: cast,
          summary: 'After young Riley is uprooted from her Midwest life and moved to San Francisco, her emotions - Joy, Fear, Anger, Disgust and Sadness - conflict on how best to navigate a new city, house, and school.',
      ),
      Movie(
          title: 'Inside Out',
          cover: 'images/insideout.jpg',
          rating: 9.2,
          reviews: 121500,
          criticReviews: 56,
          metascore: 91,
          categories: categories,
          cast: cast,
          summary: 'American car designer Carroll Shelby and driver Ken Miles battle corporate interference and the laws of physics to build a revolutionary race car for Ford in order to defeat Ferrari at the 24 Hours of Le Mans in 1966.',
      ),
    ];
  }
}