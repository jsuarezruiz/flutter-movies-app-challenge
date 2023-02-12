import 'package:flutter/material.dart';

class SourceItem extends StatelessWidget {
  final String source;
  final bool selected;

  const SourceItem({Key? key, required this.source, required this.selected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            source,
            style: TextStyle(
              color: Color(selected ? 0xff12153D : 0xffE5E5E5),
              fontWeight: FontWeight.w600,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
              height: 4,
              width: 24,
              child: Container(
                alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: selected ? Colors.pink : Colors.transparent,
                ),
              ),
          )
        ],
      ),
    );
  }
}
