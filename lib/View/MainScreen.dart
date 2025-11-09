import 'package:flutter/material.dart';
import 'package:techofv/Models/fake_data.dart';
import 'package:techofv/View/HomePage.dart';
import 'package:techofv/constants/colors.dart';
import 'package:techofv/constants/text_styles.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({
    super.key,
    required this.size,
    required this.imageHeight,
    required this.BodyMargin,
    required this.isLandscape,
    required this.NavButton,
  });

  final Size size;
  final double imageHeight;
  final double BodyMargin;
  final bool isLandscape;
  final double NavButton;

  @override
  Widget build(BuildContext context) {
    return HomePage(
      size: size,
      imageHeight: imageHeight,
      BodyMargin: BodyMargin,
      isLandscape: isLandscape,
      NavButton: NavButton,
    );
  }
}
