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
    double BodyMargin = size.width / 15;

    bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    double imageHeight = isLandscape ? size.height / 2.5 : size.height / 3.5;

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
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Column(
                children: [
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
                            Text(
                              HomePagePoster["Title"],
                              style: TextStyles.Title,
                            ),
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
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(
                              0,
                              5,
                              index == 0 ? BodyMargin : 34,
                              20,
                            ),
                            child: Container(
                              height: 80,

                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: gradients.Tags.colors,
                                  begin: Alignment.centerRight,
                                  end: Alignment.centerLeft,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
                                child: Row(
                                  children: [
                                    Icon(Icons.tag, color: Colors.white),
                                    SizedBox(width: 8),
                                    Text(
                                      TagList[index].Title,
                                      style: TextStyles.TagStyle,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(right: 35),
                    child: Row(
                      children: [
                        Icon(Icons.edit, size: 35, color: Colors.deepPurple),
                        SizedBox(width: 10),
                        Text(
                          'مشاهده داغ ترین نوشته ها',
                          style: TextStyles.Title2,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),

                  //lists of hottest news
                  SizedBox(
                    height: isLandscape ? size.height / 2.2 : size.height / 3.5,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: blogmodel.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Padding(
                                padding: EdgeInsets.only(
                                  right: index == 0 ? BodyMargin : 15,
                                ),
                                child: SizedBox(
                                  height: size.height / 5.3,
                                  width: size.width / 2.1,
                                  child: Stack(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.circular(
                                            15,
                                          ),
                                          image: DecorationImage(
                                            image: NetworkImage(
                                              blogmodel[index].imageUrl,
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        foregroundDecoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: gradients.BlogColor.colors,
                                            begin: Alignment.bottomCenter,
                                            end: Alignment.topCenter,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            15,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 8,
                                        left: 0,
                                        right: 0,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              blogmodel[index].writer,
                                              style: TextStyles.SubTitle,
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  blogmodel[index].view,
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
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                right: index == 0 ? BodyMargin : 15,
                              ),
                              child: SizedBox(
                                width: size.width / 2.4,
                                child: Text(
                                  blogmodel[index].title,
                                  style: TextStyles.SubTitle2,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 35),
                    child: SizedBox(
                      height: 80,
                      child: Row(
                        children: [
                          Icon(Icons.mic, size: 35, color: Colors.deepPurple),
                          SizedBox(width: 10),
                          Text(
                            'مشاهده داغ ترین پادکست ها',
                            style: TextStyles.Title2,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: isLandscape ? size.height / 2.2 : size.height / 3.5,
                    child: ListView.builder(
                      itemCount: Pod.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Padding(
                                padding: EdgeInsets.only(
                                  right: index == 0 ? BodyMargin : 15,
                                ),
                                child: SizedBox(
                                  height: size.height / 5.3,
                                  width: size.width / 2.1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.blue,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                          Pod[index].imageUrl,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                right: index == 0 ? BodyMargin : 15,
                              ),
                              child: SizedBox(
                                child: Text(
                                  Pod[index].name,
                                  style: TextStyles.SubTitle2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
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
              height: size.height / 11,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 30, left: 15, right: 15),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: gradients.ButtonNav.colors,
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.home, color: Colors.white),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.edit_note, color: Colors.white),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.person, color: Colors.white),
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
