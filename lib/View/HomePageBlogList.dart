import 'package:flutter/material.dart';
import 'package:techofv/Models/fake_data.dart';
import 'package:techofv/constants/colors.dart';
import 'package:techofv/constants/text_styles.dart';

class HomePageBlogList extends StatelessWidget {
  const HomePageBlogList({
    super.key,
    required this.isLandscape,
    required this.size,
    required this.BodyMargin,
    required this.imageHeight,
  });

  final bool isLandscape;
  final Size size;
  final double BodyMargin;
  final double imageHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                  padding: EdgeInsets.only(right: index == 0 ? BodyMargin : 15),
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
                              image: NetworkImage(blogmodel[index].imageUrl),
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
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                padding: EdgeInsets.only(right: index == 0 ? BodyMargin : 15),
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
    );
  }
}
