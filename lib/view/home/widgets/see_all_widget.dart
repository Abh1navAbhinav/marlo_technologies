import 'package:flutter/material.dart';
import 'package:project1/constants/textstyles.dart';

class SeeAllWidget extends StatelessWidget {
  const SeeAllWidget({
    Key? key,
    required this.length,
    required this.text,
  }) : super(key: key);
  final String text;
  final int length;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$text . $length',
            style: txtstlObj.subtitleStyle,
          ),
          Text(
            'See all',
            style: txtstlObj.seeAllStyle,
          ),
        ],
      ),
    );
  }
}
