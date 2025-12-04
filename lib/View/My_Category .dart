import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:techofv/Models/fake_data.dart';
import 'package:techofv/constants/text_styles.dart';

class MyCategory extends StatefulWidget {
  MyCategory({super.key});

  @override
  State<MyCategory> createState() => _MyCategoryState();
}

class _MyCategoryState extends State<MyCategory> {
  List AddTags = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 30),
                SvgPicture.asset('assets/images/ai.svg', height: 200),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    textAlign: TextAlign.center,
                    "تبریک میگم ایمیلت با موفقیت تایید شد لطفا ثبت نام را کامل کن",
                    style: TextStyles.ProName,
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                  child: TextField(
                    decoration: InputDecoration(hintText: "نام و نام خانوادگی"),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'دسته بندی هایی که دوست داری را انتخاب کن',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: SizedBox(
                    height: 90,
                    width: double.infinity,
                    child: GridView.builder(
                      itemCount: TagList.length,
                      scrollDirection: Axis.horizontal,
                      physics: ClampingScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 0.34,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 5,
                        crossAxisCount: 2,
                      ),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              if (AddTags.length < 6) {
                                if (!AddTags.contains(TagList[index])) {
                                  AddTags.add(TagList[index]);
                                }
                              }
                            });
                          },

                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35),
                              color: Colors.black,
                            ),
                            child: Center(
                              child: Text(
                                "# " + TagList[index].Title,
                                style: TextStyles.HashTgs,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Image.asset('assets/images/flash.png', scale: 8),
                SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: SizedBox(
                    height: 90,
                    width: double.infinity,
                    child: GridView.builder(
                      itemCount: AddTags.length,
                      scrollDirection: Axis.horizontal,
                      physics: ClampingScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 0.34,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 5,
                        crossAxisCount: 2,
                      ),
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            color:
                                AddTags.length > 6 &&
                                    !AddTags.contains(TagList[index])
                                ? Colors.grey
                                : const Color.fromARGB(255, 50, 61, 67),
                          ),
                          child: Center(
                            child: Text(
                              "# ${AddTags[index].Title}",
                              style: TextStyles.HashTgs,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
