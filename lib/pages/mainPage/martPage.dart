import 'package:flutter/material.dart';
import 'package:vastu/pages/mainPage/shopPages/itemPage.dart';
import 'package:vastu/pages/mainPage/shopPages/itemPage2.dart';
import 'package:vastu/pages/mainPage/shopPages/itemPage3.dart';

class MartPage extends StatefulWidget {
  const MartPage({super.key});

  @override
  State<MartPage> createState() => _MartPageState();
}

class _MartPageState extends State<MartPage> {
  final List yo = [
    ['22', 'Explore\nUttar Pradesh'],
    ['23', 'Explore\nGujrat'],
    ['24', 'Explore\nRajasthan'],
    ['25', 'Explore\nKerala'],
    ['26', 'Explore\nHimachal Pradesh'],
    ['27', 'Explore\nTamil Nadu'],
    ['28', 'Explore\nPunjab'],
    ['29', 'Explore\nWest Bengal']
  ];
  final List<Widget> yoo = [
    ItemPage1(),
    ItemPage2(),
    ItemPage3(),
    ItemPage1(),
    ItemPage1(),
    ItemPage1(),
    ItemPage1(),
    ItemPage1()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xFF17181D),
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            backgroundColor: Color(0xFF1A9EB0),
            actions: [
              Container(
                margin: EdgeInsets.all(10),
                height: 15,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {},
                    ),
                    Expanded(
                        child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '  Search ...',
                      ),
                    ))
                  ],
                ),
              )
            ],
          ),
          body: Center(
              child: Container(
            padding: EdgeInsets.only(bottom: 7),
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "States",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    martCard(
                      yo1: yo[0][0],
                      yo2: yo[0][1],
                      yo3: yoo[0],
                    ),
                    martCard(yo1: yo[1][0], yo2: yo[1][1], yo3: yoo[1])
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    martCard(yo1: yo[2][0], yo2: yo[2][1], yo3: yoo[2]),
                    martCard(yo1: yo[3][0], yo2: yo[3][1], yo3: yoo[0])
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    martCard(yo1: yo[4][0], yo2: yo[4][1], yo3: yoo[0]),
                    martCard(yo1: yo[5][0], yo2: yo[5][1], yo3: yoo[0])
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    martCard(yo1: yo[6][0], yo2: yo[6][1], yo3: yoo[0]),
                    martCard(yo1: yo[7][0], yo2: yo[7][1], yo3: yoo[0])
                  ],
                ),
              ],
            ),
          ))),
    );
  }
}

class martCard extends StatelessWidget {
  const martCard(
      {super.key, required this.yo1, required this.yo2, required this.yo3});
  final String yo1;
  final String yo2;
  final Widget yo3;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => yo3));
      },
      child: Container(
        width: 150,
        height: 125,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage("lib/images/Rectangle $yo1.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.only(bottom: 10),
          alignment: Alignment.bottomLeft,
          child: Text(
            yo2,
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
