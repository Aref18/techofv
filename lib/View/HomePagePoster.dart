import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:techofv/constants/colors.dart';
import 'package:techofv/constants/text_styles.dart';

class HomePagePoster extends StatelessWidget {
  const HomePagePoster({
    super.key,
    required this.size,
    required this.imageHeight,
    required this.poster,
  });

  final Size size;
  final double imageHeight;
  final dynamic poster;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: size.width / 1.1,
          height: imageHeight,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(poster.Image),
            ),
          ),
          foregroundDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
              colors: gradients.poster.colors,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 8,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    poster.Writer + " - " + poster.Data,
                    style: TextStyles.SubTitle,
                  ),
                  Row(
                    children: [
                      Text(poster.View, style: TextStyles.SubTitle),
                      SizedBox(width: 8),
                      Icon(Icons.remove_red_eye, color: Colors.white, size: 16),
                    ],
                  ),
                ],
              ),
              Text(poster.Title, style: TextStyles.Title),
            ],
          ),
        ),
      ],
    );
  }
}
