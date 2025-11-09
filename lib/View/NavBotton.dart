import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:techofv/View/MainScreen.dart';
import 'package:techofv/constants/colors.dart';

class NavBotton extends StatefulWidget {
  const NavBotton({super.key});

  @override
  State<NavBotton> createState() => _HomepageState();
}

class _HomepageState extends State<NavBotton> {
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
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: gradients.ButtonNavGR.colors,
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              height: NavButton,
              child: Padding(
                padding: EdgeInsets.only(
                  bottom: 30,
                  left: BodyMargin,
                  right: BodyMargin,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: gradients.ButtonNav.colors,
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        highlightColor: Colors.transparent,
                        onPressed: () {},
                        icon: Icon(Icons.home, color: Colors.white, size: 30),
                      ),
                      IconButton(
                        highlightColor: Colors.transparent,
                        onPressed: () {},
                        icon: Icon(
                          Icons.edit_note,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      IconButton(
                        highlightColor: Colors.transparent,
                        onPressed: () {},
                        icon: Icon(Icons.person, color: Colors.white, size: 30),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
