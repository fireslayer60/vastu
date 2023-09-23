import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:vastu/components/largecard.dart';

import '../../components/smallcard.dart';
import 'martPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List yo = ["Art", "Historical", "Literature", "Festivals"];
  final List yo2 = [
    ["3", "Warli Painting", "Maharashtra"],
    ["4", "Pattachitra", "Odisha"],
    ["5", "Phad Painting", "Rajasthan"]
  ];
  final List yo3 = [
    ["6", "Bangali Saree", "Uttar Pradesh"],
    ["7", "Glass Bangles", "Uttar Pradesh"],
    ["8", "Lehenga", "Rajasthan"],
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF17181D),
        body: Column(children: [
          Image(image: AssetImage("lib/images/image2.png")),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 20, top: 5),
            child: Text(
              "Discover",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            height: 60,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: yo.length,
              itemBuilder: (BuildContext context, int index) {
                return SmallCard(
                  text: yo[index],
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: 20,
                );
              },
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => MartPage())),
            child: Container(
              padding: EdgeInsets.only(right: 20),
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "See all",
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    size: 15,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
          tilescroll(yo2: yo2),
          SizedBox(
            child: Container(color: Colors.white),
            height: 1,
            width: 390,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Trending",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MartPage())),
                      child: Text(
                        "See all",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 15,
                      color: Colors.white,
                    )
                  ],
                ),
              ],
            ),
          ),
          tilescroll(yo2: yo3),
        ]),
      ),
    );
  }
}

class tilescroll extends StatelessWidget {
  const tilescroll({
    super.key,
    required this.yo2,
  });

  final List yo2;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      height: 140,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: yo2.length,
        itemBuilder: (BuildContext context, int index) {
          return LargeCard(
            img: yo2[index][0],
            upper: yo2[index][1],
            lower: yo2[index][2],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 20,
          );
        },
      ),
    );
  }
}
