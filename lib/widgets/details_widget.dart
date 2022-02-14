import 'dart:ui';

import 'package:flutter/material.dart';

class DetailsWidget extends StatelessWidget {
  const DetailsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: height * 0.2,
        ),
        const Text(
          "Worlwide Purchase\nAccess From Your\nPlatinum Card",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 40,
            height: 1.25,
          ),
          textAlign: TextAlign.start,
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Free upgrade option to our platinum services\nand get lifetime validity.",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w300,
          ),
          textAlign: TextAlign.start,
        ),
        const SizedBox(
          height: 30,
        ),
        ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 10.0,
              sigmaY: 10.0,
            ),
            child: Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.15),
                border: Border.all(
                  color: Colors.white.withOpacity(0.7),
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(5.0),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 4.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Your Email",
                    style: TextStyle(
                      color: Color(0xFFCDBFD8),
                      fontSize: 14.0,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFF4F3AA7),
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    width: 80,
                    height: 80,
                    alignment: Alignment.center,
                    child: const Text(
                      "APPLY",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
