import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movies_app_challenge/services/movie_service.dart';
import 'package:movies_app_challenge/models/movie.dart';
import 'package:movies_app_challenge/widgets/category_item.dart';
import 'package:movies_app_challenge/widgets/movie_item.dart';
import 'package:movies_app_challenge/widgets/source_item.dart';

class Movies extends StatefulWidget {
  const Movies({Key? key}) : super(key: key);

  @override
  State<Movies> createState() => _MoviesState();
}

class _MoviesState extends State<Movies> {
  int _curentSelectedIndex = 1;
  final MovieService movieService = MovieService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          buildToolbarWidget(),
          buildSourcesWidget(),
          buildCategoriesWidget(),
          buildMoviesWidget(),
      ],
      ),
    );
  }

  Widget buildToolbarWidget() {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 6,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'images/ic_menu.svg',
                  height: 20,
                )),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'images/ic_search.svg',
                  height: 20,
                )),
          ],
        ),
      ),
    );
  }

  Widget buildSourcesWidget() {
    int selectedIndex = 0;
    List<String> sources = movieService.getSources();

    return SizedBox(
      height: 48,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: sources.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () => {
              setState(() {
                selectedIndex = index;
              }),
            },
              child: SourceItem(
                source: sources[index],
                selected: index == selectedIndex,
              ),
            );
          }
      ),
    );
  }

  Widget buildCategoriesWidget() {
    List<String> categories = movieService.getCategories();

    return SizedBox(
      height: 100,
      child: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: 6,
            vertical: 34,
        ),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (BuildContext context, int index) {
              return CategoryItem(
                category: categories[index],
              );
          }
        ),
      ),
    );
  }

  Widget buildMoviesWidget() {
    List<Movie> movies = movieService.getMovies();

    return Expanded(
      child: Container(
        alignment: Alignment.center,
        child: CarouselSlider.builder(
          itemCount: movies.length,
            itemBuilder: (context, index, _) {
              return Opacity(
                opacity: index == _curentSelectedIndex ? 1.0 : 0.2,
                child: MovieItem(movie: movies[index],
                ),
              );
            },
            options: CarouselOptions(
                aspectRatio: 0.75,
                initialPage: _curentSelectedIndex,
                viewportFraction: 0.75,
                onPageChanged: (index, reason) {
                  setState(() {
                    _curentSelectedIndex = index;
                  });
                }
            ),
        ),
      ),
    );
  }
}
