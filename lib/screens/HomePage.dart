import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:techofv/Models/fake_data.dart';
import 'package:techofv/constants/colors.dart';
import 'package:techofv/constants/text_styles.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
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
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.menu, size: 35),
                  Image.asset(
                    'assets/images/tov.png',
                    height: size.height / 13,
                  ),
                  Icon(Icons.search, size: 35),
                ],
              ),
              SizedBox(height: 20),
              Stack(
                children: [
                  Container(
                    width: size.width / 1.1,
                    height: size.height / 4.7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                        image: AssetImage(HomePagePoster["ImageAsset"]),
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
                              HomePagePoster["Writer"] +
                                  " - " +
                                  HomePagePoster["Data"],
                              style: TextStyles.SubTitle,
                            ),
                            Row(
                              children: [
                                Text(
                                  HomePagePoster["View"],
                                  style: TextStyles.SubTitle,
                                ),
                                SizedBox(width: 8),
                                Icon(
                                  Icons.remove_red_eye,
                                  color: Colors.white,
                                  size: 16,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text(HomePagePoster["Title"], style: TextStyles.Title),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),

              SizedBox(
                height: 80,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: TagList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 80,

                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: gradients.Tags.colors,
                            begin: Alignment.centerRight,
                            end: Alignment.centerLeft,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
                          child: Row(
                            children: [
                              Icon(Icons.handyman_sharp, color: Colors.white),
                              SizedBox(width: 8),
                              Text(
                                TagList[index].Title,
                                style: TextStyles.TagStyle,
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
