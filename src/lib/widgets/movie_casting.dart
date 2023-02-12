import 'package:flutter/material.dart';
import 'package:movies_app_challenge/models/cast.dart';
import 'package:movies_app_challenge/widgets/cast_item.dart';
import 'package:movies_app_challenge/widgets/section_title.dart';

class MovieCasting extends StatelessWidget {
  final List<Cast> casting;
  const MovieCasting({Key? key, required this.casting}) : super(key: key);

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
            children: <Widget>[
              for (var cast in casting)
              CastItem(
                image: cast.image!,
                name: cast.name!,
                character: cast.character!,
              )
            ],
          ),
        ],
      ),
    );
  }
}