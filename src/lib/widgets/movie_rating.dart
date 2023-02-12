import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movies_app_challenge/models/movie.dart';

class MovieRating extends StatelessWidget {
  final Movie movie;

  const MovieRating({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Rating
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('images/ic_star_yellow.svg', height: 20,),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      movie.rating.toString(),
                      style: const TextStyle(
                        color: Color(0xff12153D),
                        fontWeight: FontWeight.w600,
                        fontSize: 12
                      ),
                    ),
                    const Text(
                      '/10',
                      style: TextStyle(
                          color: Color(0xff12153D),
                          fontWeight: FontWeight.w500,
                          fontSize: 12
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  movie.reviews.toStringAsFixed(0),
                  style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Color(0xff9A9BB2),
                      fontSize: 9),
                ),
              ],
            ),
          // Rate this
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'images/ic_star_outline.svg',
                height: 20,
              ),
              const SizedBox(
                height: 4,
              ),
              const Text(
                'Rate This',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color(0xff12153D),
                    fontSize: 12),
              ),
              const SizedBox(
                height: 12,
              ),
            ],
          ),
          // Score
           Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: const Color(0xff51CF66),
                    ),
                    child: const Text('86', style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 10,
                    ),),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                const Text(
                  'Metastore',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(0xff12153D),
                      fontSize: 12),
                ),
                const SizedBox(
                  height: 2,
                ),
                Row(
                  children: [
                    Text(
                      movie.criticReviews.toStringAsFixed(0),
                      style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Color(0xff9A9BB2),
                          fontSize: 9),
                    ),
                    const SizedBox(width: 2,),
                    const Text('critic reviews',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Color(0xff9A9BB2),
                          fontSize: 9),
                    ),
                  ],
                ),
              ],
          )
        ],
      ),
    );
  }
}