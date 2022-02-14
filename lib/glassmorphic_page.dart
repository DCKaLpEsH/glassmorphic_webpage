import 'dart:ui';

import 'package:flutter/material.dart';

import 'widgets/credit_card_widget.dart';
import 'widgets/details_widget.dart';

class GlassmorphicPage extends StatelessWidget {
  const GlassmorphicPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // margin: const EdgeInsets.all(40.0),
        // height: double.infinity,
        // width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF55439E),
              Color(0xFF952FFF),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          // borderRadius: BorderRadius.circular(30.0),
        ),
        padding: const EdgeInsets.only(
          top: 30,
          bottom: 20,
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: Image.asset(
                "assets/sphere_1.png",
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Image.asset(
                "assets/sphere_2.png",
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  SizedBox(),
                  DetailsWidget(),
                  SizedBox(
                    width: 150,
                  ),
                  CreditCardWidget(),
                  SizedBox(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
