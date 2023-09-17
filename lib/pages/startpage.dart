import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "VASTU",
              style: TextStyle(
                  color: Color(0xFFE35629),
                  fontSize: 48,
                  fontWeight: FontWeight.w500),
            )
          ]),
        ),
      ),
    ));
  }
}
