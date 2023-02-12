import 'package:flutter/material.dart';

class CastItem extends StatelessWidget {
  final String image;
  final String name;
  final String character;

  const CastItem({
    Key? key,
    required this.image,
    required this.name,
    required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetImage(image),
          height: 60,
        ),
        const SizedBox(
          height: 4,
        ),
        SizedBox(
          width: 60,
          child: Text(
            name,
            textAlign: TextAlign.center,
            maxLines: 2,
            style: const TextStyle(
                color: Color(0xff12153D),
                fontSize: 12,
                fontWeight: FontWeight.w600
            ),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          character,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color(0xff9A9BB2),
            fontSize: 11,
            fontWeight: FontWeight.w600)
        ),
      ],
    );
  }
}