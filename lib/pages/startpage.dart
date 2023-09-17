import 'package:flutter/material.dart';
import 'package:vastu/pages/signupPage.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 50),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Image(
              image: AssetImage("lib/images/image.png"),
              height: 207,
              width: 207,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "VASTU",
              style: TextStyle(
                  color: Color(0xFFE35629),
                  fontSize: 48,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 60.0,
              width: 265,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(colors: [
                    Color(0xFFE35629),
                    Color(0xFFA6FF60).withOpacity(0.5)
                  ])),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => signUpPage()));
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'DIVE IN',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 30,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    ));
  }
}
