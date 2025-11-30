import 'package:flutter/material.dart';
import 'package:techofv/Models/date_models.dart';
import 'package:techofv/Models/fake_data.dart';
import 'package:techofv/View/ButtonNav.dart';
import 'package:techofv/View/HomeMain.dart';
import 'package:techofv/View/ProfileScreen.dart';

class MainScreen extends StatefulWidget {
  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var SelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double BodyMargin = size.width / 15;

    bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    double imageHeight = isLandscape ? size.width / 3 : size.height / 4.7;
    double NavButton = isLandscape ? size.height / 4.5 : size.height / 9.5;
    List<Widget> TechScreens = [
      HomeMain(),
      Profilescreen(blog: blogmodel[0], size: size),
    ];
    return Scaffold(
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
          Center(child: Positioned.fill(child: TechScreens[0])),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: ButtonNav(
              NavButton: NavButton,
              BodyMargin: BodyMargin,
              size: size,
            ),
          ),
        ],
      ),
    );
  }
}
