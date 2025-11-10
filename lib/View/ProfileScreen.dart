import 'package:flutter/material.dart';
import 'package:techofv/Models/date_models.dart';
import 'package:techofv/View/HomeMain.dart';

import 'package:techofv/constants/colors.dart';
import 'package:techofv/constants/text_styles.dart';

class Profilescreen extends StatelessWidget {
  final BlogModel blog;
  const Profilescreen({super.key, required this.blog});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double BodyMargin = size.width / 15;

    bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    double imageHeight = isLandscape ? size.width / 3 : size.height / 4.7;
    double NavButton = isLandscape ? size.height / 4.5 : size.height / 9.5;
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Column(
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage(blog.WriterimageUrl),
              ),

              SizedBox(height: 20),

              Text('edit'),
              SizedBox(height: 50),
              Text('سید عارف موسوی', style: TextStyles.ProName),
              SizedBox(height: 20),
              Text('arefmoosavi@gmail.com', style: TextStyles.ProGmail),
              SizedBox(height: 50),

              Padding(
                padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
                child: Divider(thickness: 2),
              ),
              SizedBox(height: 10),
              Text('favorite writes'),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
                child: Divider(thickness: 2),
              ),
              SizedBox(height: 10),
              Text('favorite Podcasts'),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
                child: Divider(thickness: 2),
              ),
              SizedBox(height: 10),
              Text("Logout"),
              SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
                child: Divider(thickness: 2),
              ),
            ],
          ),

          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
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
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => HomeMain()),
                          );
                        },
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
