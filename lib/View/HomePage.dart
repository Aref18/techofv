import 'package:flutter/material.dart';
import 'package:techofv/Models/fake_data.dart';
import 'package:techofv/View/HomePageBlogList.dart';
import 'package:techofv/View/HomePagePodcastList.dart';
import 'package:techofv/View/HomePagePoster.dart';
import 'package:techofv/View/HomePageTagList.dart';
import 'package:techofv/constants/text_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({
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
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
        child: Column(
          children: [
            SizedBox(height: 20),
            HomePagePoster(
              size: size,
              imageHeight: imageHeight,
              poster: HomePagePosters[0],
            ),
            SizedBox(height: 25),

            HomePageTagList(BodyMargin: BodyMargin),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 35),
              child: Row(
                children: [
                  Icon(Icons.edit, size: 35, color: Colors.deepPurple),
                  SizedBox(width: 10),
                  Text('مشاهده داغ ترین نوشته ها', style: TextStyles.Title2),
                ],
              ),
            ),
            SizedBox(height: 15),

            //lists of hottest news
            HomePageBlogList(
              isLandscape: isLandscape,
              size: size,
              BodyMargin: BodyMargin,
              imageHeight: imageHeight,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 35),
              child: SizedBox(
                height: 80,
                child: Row(
                  children: [
                    Icon(Icons.mic, size: 35, color: Colors.deepPurple),
                    SizedBox(width: 10),
                    Text('مشاهده داغ ترین پادکست ها', style: TextStyles.Title2),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            HomePagePodcastList(
              isLandscape: isLandscape,
              size: size,
              BodyMargin: BodyMargin,
              imageHeight: imageHeight,
            ),
            SizedBox(height: NavButton),
          ],
        ),
      ),
    );
  }
}
