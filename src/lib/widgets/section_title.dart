import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        textAlign: TextAlign.start,
        style: const TextStyle(
            fontSize: 16,
            color: Color(0xff12153D),
            fontWeight: FontWeight.w600),
      ),
    );
  }
}