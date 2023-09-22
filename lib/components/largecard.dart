import 'package:flutter/material.dart';

class LargeCard extends StatelessWidget {
  const LargeCard(
      {super.key, required this.upper, required this.lower, required this.img});

  final String upper;
  final String lower;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 140,
      child: Container(
        child: Stack(children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
            child: Image(
              image: AssetImage("lib/images/image$img.png"),
              width: 160,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 20, left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  upper,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  lower,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
