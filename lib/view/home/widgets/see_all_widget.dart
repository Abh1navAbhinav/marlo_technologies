import 'package:flutter/material.dart';
import 'package:project1/constants/textstyles.dart';

class SeeAllWidget extends StatelessWidget {
  const SeeAllWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'All people . 3',
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
