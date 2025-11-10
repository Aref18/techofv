import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:techofv/Models/date_models.dart';
import 'package:techofv/Models/fake_data.dart';
import 'package:techofv/View/ButtonNav.dart';
import 'package:techofv/View/MainScreen.dart';
import 'package:techofv/View/ProfileScreen.dart';
import 'package:techofv/constants/colors.dart';

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
          MainScreen(
            size: size,
            imageHeight: imageHeight,
            BodyMargin: BodyMargin,
            isLandscape: isLandscape,
            NavButton: NavButton,
          ),
          ButtonNav(NavButton: NavButton, BodyMargin: BodyMargin),
        ],
      ),
    );
  }
}
