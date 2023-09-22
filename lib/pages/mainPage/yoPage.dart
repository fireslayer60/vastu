import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:vastu/pages/mainPage/HomePage.dart';
import 'package:vastu/pages/mainPage/martPage.dart';

class yoWidget extends StatefulWidget {
  const yoWidget({super.key});

  @override
  State<yoWidget> createState() => _yoWidgetState();
}

class _yoWidgetState extends State<yoWidget> {
  int selectedIn = 0;
  List<Widget> yoo = [HomePage(), MartPage(), Text("yo"), Text("yoo")];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: yoo[selectedIn],
        backgroundColor: Colors.white,
        bottomNavigationBar: GNav(
          onTabChange: (value) {
            setState(() {
              selectedIn = value;
            });
          },
          selectedIndex: selectedIn,
          backgroundColor: Color(0xFFFC602E),
          activeColor: Colors.white,
          tabBackgroundColor: Colors.white.withOpacity(0.3),
          gap: 8,
          tabs: [
            GButton(
              icon: Icons.home,
              text: "Home",
            ),
            GButton(
              icon: Icons.search,
              text: "Shop",
            ),
            GButton(
              icon: Icons.shop_2,
              text: "Cart",
            ),
            GButton(
              icon: Icons.person,
              text: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
