import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:techofv/Models/fake_data.dart';
import 'package:techofv/View/ButtonNav.dart';
import 'package:techofv/View/HomePageBlogList.dart';
import 'package:techofv/View/HomePagePodcastList.dart';
import 'package:techofv/View/HomePagePoster.dart';
import 'package:techofv/View/HomePageSeemore.dart';
import 'package:techofv/View/HomePageSeemorePodcats.dart';
import 'package:techofv/View/HomePageTagList.dart';

class HomeMain extends StatefulWidget {
  const HomeMain({super.key});

  @override
  State<HomeMain> createState() => _HomepageState();
}

class _HomepageState extends State<HomeMain> {
  @override
  void initState() {
    _updateStatud();
    super.initState();
  }

  void _updateStatud() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double BodyMargin = size.width / 15;

    bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    double imageHeight = isLandscape ? size.width / 3 : size.height / 4.7;
    double NavButton = isLandscape ? size.height / 4.5 : size.height / 9.5;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              highlightColor: Colors.transparent,
              onPressed: () {},
              icon: Icon(Icons.menu, size: 35),
            ),
            Image.asset('assets/images/tov.png', height: size.height / 13),
            IconButton(
              highlightColor: Colors.transparent,
              onPressed: () {},
              icon: Icon(Icons.search, size: 35),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 30),
                HomePagePoster(
                  size: size,
                  imageHeight: imageHeight,
                  poster: HomePagePosters[0],
                ),
                SizedBox(height: 25),
                HomePageTagList(BodyMargin: BodyMargin),
                SizedBox(height: 20),
                HomePageSeemore(),
                SizedBox(height: 15),
                HomePageBlogList(
                  isLandscape: isLandscape,
                  size: size,
                  BodyMargin: BodyMargin,
                  imageHeight: imageHeight,
                ),
                HomePageSeemorePodcasts(),
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

          ButtonNav(NavButton: NavButton, BodyMargin: BodyMargin, size: size),
        ],
      ),
    );
  }
}
