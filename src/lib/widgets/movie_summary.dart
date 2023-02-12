import 'package:flutter/material.dart';
import 'package:movies_app_challenge/widgets/section_title.dart';

class MovieSummary extends StatelessWidget {
  final String summary;

  const MovieSummary({Key? key, required this.summary}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      alignment: Alignment.centerLeft,
      child: Column(
        children: [
          const SectionTitle(title: 'Plot Summary',),
          const SizedBox(height: 12),
          Text(summary,
            textAlign: TextAlign.start,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                height: 1.5,
                fontSize: 11,
                color: Color(0xff737599),
                fontWeight: FontWeight.w400
            ),
          ),
        ],
      ),
    );
  }
}
