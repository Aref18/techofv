import 'package:flutter/material.dart';
import 'package:techofv/Models/fake_data.dart';
import 'package:techofv/constants/text_styles.dart';

class HomePagePodcastList extends StatelessWidget {
  const HomePagePodcastList({
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
        itemCount: Pod.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Padding(
                  padding: EdgeInsets.only(right: index == 0 ? BodyMargin : 15),
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
                padding: EdgeInsets.only(right: index == 0 ? BodyMargin : 15),
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
    );
  }
}
