import 'package:flutter/material.dart';
import 'package:techofv/Models/fake_data.dart';
import 'package:techofv/View/ButtonNav.dart';
import 'package:techofv/View/HomeMain.dart';
import 'package:techofv/View/ProfileScreen.dart';
import 'package:techofv/View/Register_Intro.dart';

class MainScreen extends StatefulWidget {
  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  int SelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double BodyMargin = size.width / 15;
    bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    double NavButton = isLandscape ? size.height / 4.5 : size.height / 9.5;
    return Scaffold(
      drawer: Drawer(child: ListView(children: [])),
      key: _scaffoldkey,
      appBar: AppBar(
        automaticallyImplyLeading: false,

        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              highlightColor: Colors.transparent,
              onPressed: () {
                _scaffoldkey.currentState?.openDrawer();
              },
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
          Positioned.fill(
            child: IndexedStack(
              index: SelectedIndex,
              children: [
                HomeMain(),
                RegisterIntro(),
                Profilescreen(blog: blogmodel[0], size: size),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: ButtonNav(
              NavButton: NavButton,
              BodyMargin: BodyMargin,
              size: size,
              ChangeScreen: (int value) {
                setState(() {
                  SelectedIndex = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
