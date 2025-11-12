import 'package:flutter/material.dart';
import 'package:techofv/Models/date_models.dart';
import 'package:techofv/constants/text_styles.dart';

class Profilescreen extends StatefulWidget {
  final BlogModel blog;
  const Profilescreen({super.key, required this.blog});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
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
                backgroundImage: AssetImage(widget.blog.WriterimageUrl),
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
        ],
      ),
    );
  }
}
