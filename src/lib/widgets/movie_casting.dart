import 'package:flutter/material.dart';
import 'package:movies_app_challenge/widgets/cast_item.dart';
import 'package:movies_app_challenge/widgets/section_title.dart';

class MovieCasting extends StatelessWidget {
  const MovieCasting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      height: 200,
      width: double.infinity,
      child: Column(
        children: [
          const SectionTitle(title: 'Cast & Crew'),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const <Widget>[
              CastItem(
                image: 'images/actor_1.png',
                name: 'James Mangold',
                character: 'Director',
              ),
              CastItem(
                image: 'images/actor_2.png',
                name: 'Matt \nDamon',
                character: 'Carroll',
              ),
              CastItem(
                image: 'images/actor_3.png',
                name: 'Christian Bale',
                character: 'Ken Miles',
              ),
              CastItem(
                image: 'images/actor_4.png',
                name: 'Caitriona Balfe',
                character: 'Mollie',
              ),
            ],
          ),
        ],
      ),
    );
  }
}