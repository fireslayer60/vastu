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
        backgroundColor: Color(0xFF17181D),
        bottomNavigationBar: GNav(
          onTabChange: (value) {
            setState(() {
              selectedIn = value;
            });
          },
          selectedIndex: selectedIn,
          backgroundColor: Color(0xFF17181D),
          activeColor: Color(0xFF1A9EB0),
          tabBackgroundColor: Colors.white.withOpacity(0.99),
          gap: 8,
          tabs: [
            GButton(
              icon: Icons.home,
              text: "Home",
              iconColor: Colors.white,
            ),
            GButton(
              icon: Icons.shop,
              text: "Shop",
              iconColor: Colors.white,
            ),
            GButton(
              icon: Icons.shopping_cart,
              text: "Cart",
              iconColor: Colors.white,
            ),
            GButton(
              icon: Icons.person,
              text: "Profile",
              iconColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
