import 'package:flutter/material.dart';
import 'package:project1/constants/colors.dart';

class ContinueButtonWidget extends StatelessWidget {
  const ContinueButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: GestureDetector(
        onTap: () {},
        child: Material(
          borderRadius: BorderRadius.circular(10),
          color: Colors.transparent,
          shadowColor: colorsObj.kBlueColor,
          elevation: 5,
          child: Container(
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: colorsObj.kBlueColor,
            ),
            child: const Center(
              child: Text(
                'Continue',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
