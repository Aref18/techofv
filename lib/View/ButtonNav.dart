import 'package:flutter/material.dart';
import 'package:techofv/Models/fake_data.dart';
import 'package:techofv/View/ProfileScreen.dart';
import 'package:techofv/constants/colors.dart';

class ButtonNav extends StatelessWidget {
  const ButtonNav({
    super.key,
    required this.NavButton,
    required this.BodyMargin,
  });

  final double NavButton;
  final double BodyMargin;

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
                IconButton(
                  highlightColor: Colors.transparent,
                  onPressed: () {},
                  icon: Icon(Icons.home, color: Colors.white, size: 30),
                ),
                IconButton(
                  highlightColor: Colors.transparent,
                  onPressed: () {},
                  icon: Icon(Icons.edit_note, color: Colors.white, size: 30),
                ),
                IconButton(
                  highlightColor: const Color.fromARGB(0, 133, 70, 70),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Profilescreen(blog: blogmodel[0]),
                      ),
                    );
                  },
                  icon: Icon(Icons.person, color: Colors.white, size: 30),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
