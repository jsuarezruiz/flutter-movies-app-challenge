import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  const AddButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          color: const Color(0xffFE6D8E),
          borderRadius: BorderRadius.circular(12),
      ),
      child: const Icon(
        Icons.add,
        color: Color(0xffFFFFFF),
        size: 20,
      ),
    );
  }
}