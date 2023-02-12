import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String category;
  const CategoryItem({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 18),
          decoration: BoxDecoration(
              color: const Color(0xffFFFFFF),
              border: Border.all(width: 1.5, color: const Color(0xffE5E5E5)),
              borderRadius: BorderRadius.circular(50)
          ),
          child: Text(
            category,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Color(0xff12153D),
            ),
          ),
        ),
        const SizedBox(width: 8,)
      ],
    );
  }
}
