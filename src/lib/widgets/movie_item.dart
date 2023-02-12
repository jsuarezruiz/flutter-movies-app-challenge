import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movies_app_challenge/models/movie.dart';
import 'package:movies_app_challenge/screens/movie_details.dart';

class MovieItem extends StatelessWidget {
  final Movie movie;

  const MovieItem({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      GestureDetector(
        onTap: () =>
            Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => MovieDetails(movie: movie))),
        child: Container(
          height: MediaQuery
              .of(context)
              .size
              .height / 2,
          width: MediaQuery
              .of(context)
              .size
              .width / 1.5,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(48),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 12,
                offset: const Offset(0, 12), // changes position of shadow
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(48),
            child: Image.asset(
              movie.cover!,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      const SizedBox(height: 12,),
      Column(
        children: [
          Text(movie.title!,
            style: const TextStyle(
                color: Color(0xff12153D),
                fontSize: 24,
                fontWeight: FontWeight.w600
            ),
          ),
          const SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'images/ic_star.svg',
                height: 12,
              ),
              const SizedBox(width: 6),
              Text(movie.rating!.toString(),
                style: const TextStyle(
                  color: Color(0xff12153D),
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],)
        ],
      )
    ],
    );
  }
}