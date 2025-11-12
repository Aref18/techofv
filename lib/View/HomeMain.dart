import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:techofv/View/ProfileScreen.dart';
import 'package:techofv/View/HomePage.dart';
import 'package:techofv/Models/fake_data.dart';
import 'package:techofv/constants/colors.dart';

class HomeMain extends StatefulWidget {
  const HomeMain({super.key});

  @override
  State<HomeMain> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  int _selectedIndex = 0;

  @override
  void initState() {
    _updateStatus();
    super.initState();
  }

  void _updateStatus() {
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

    final List<Widget> pages = [
      HomePage(
        size: size,
        imageHeight: imageHeight,
        BodyMargin: BodyMargin,
        isLandscape: isLandscape,
        NavButton: NavButton,
      ),
      Profilescreen(blog: blogmodel[0]),
    ];

    return Scaffold(
      backgroundColor: Colors.white,

      // 👇 فقط وقتی صفحه خانه انتخاب شده AppBar نشون بده
      appBar: _selectedIndex == 0
          ? AppBar(
              backgroundColor: Colors.white,
              scrolledUnderElevation: 0,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    highlightColor: Colors.transparent,
                    onPressed: () {},
                    icon: const Icon(Icons.menu, size: 35),
                  ),
                  Image.asset(
                    'assets/images/tov.png',
                    height: size.height / 13,
                  ),
                  IconButton(
                    highlightColor: Colors.transparent,
                    onPressed: () {},
                    icon: const Icon(Icons.search, size: 35),
                  ),
                ],
              ),
            )
          : null, // در غیر این صورت AppBar حذف میشه

      body: Stack(
        children: [
          pages[_selectedIndex],
          ButtonNav(
            NavButton: NavButton,
            BodyMargin: BodyMargin,
            selectedIndex: _selectedIndex,
            onItemTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ],
      ),
    );
  }
}

class ButtonNav extends StatelessWidget {
  const ButtonNav({
    super.key,
    required this.NavButton,
    required this.BodyMargin,
    required this.selectedIndex,
    required this.onItemTap,
  });

  final double NavButton;
  final double BodyMargin;
  final int selectedIndex;
  final ValueChanged<int> onItemTap;

  @override
  Widget build(BuildContext context) {
    return Positioned(
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
                _navItem(Icons.home, 0),
                _navItem(Icons.edit_note, 1),
                _navItem(Icons.person, 2),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _navItem(IconData icon, int index) {
    final bool isSelected = index == selectedIndex;
    return IconButton(
      highlightColor: Colors.transparent,
      onPressed: () => onItemTap(index),
      icon: Icon(
        icon,
        color: isSelected ? Colors.yellowAccent : Colors.white,
        size: isSelected ? 35 : 30,
      ),
    );
  }
}
