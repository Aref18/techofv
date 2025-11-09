import 'package:flutter/material.dart';
import 'package:techofv/Models/fake_data.dart';
import 'package:techofv/View/HomePagePoster.dart';
import 'package:techofv/View/HomePageTagList.dart';
import 'package:techofv/constants/colors.dart';
import 'package:techofv/constants/text_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    required this.size,
    required this.imageHeight,
    required this.BodyMargin,
    required this.isLandscape,
    required this.NavButton,
  });

  final Size size;
  final double imageHeight;
  final double BodyMargin;
  final bool isLandscape;
  final double NavButton;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
        child: Column(
          children: [
            SizedBox(height: 20),
            HomePagePoster(
              size: size,
              imageHeight: imageHeight,
              poster: HomePagePosters[0],
            ),
            SizedBox(height: 25),

            HomePageTagList(BodyMargin: BodyMargin),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 35),
              child: Row(
                children: [
                  Icon(Icons.edit, size: 35, color: Colors.deepPurple),
                  SizedBox(width: 10),
                  Text('مشاهده داغ ترین نوشته ها', style: TextStyles.Title2),
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
                            height: imageHeight,
                            width: size.width / 2.1,
                            child: Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        blogmodel[index].imageUrl,
                                      ),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  foregroundDecoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: gradients.BlogColor.colors,
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter,
                                    ),
                                    borderRadius: BorderRadius.circular(15),
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
                    Text('مشاهده داغ ترین پادکست ها', style: TextStyles.Title2),
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
                            height: imageHeight,
                            width: size.width / 2.1,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.blue,
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(Pod[index].imageUrl),
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
            SizedBox(height: NavButton),
          ],
        ),
      ),
    );
  }
}
