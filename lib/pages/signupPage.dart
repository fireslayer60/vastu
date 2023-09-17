import 'package:flutter/material.dart';

class signUpPage extends StatefulWidget {
  const signUpPage({super.key});

  @override
  State<signUpPage> createState() => _signUpPageState();
}

class _signUpPageState extends State<signUpPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("lib/images/image1.png"),
              fit: BoxFit.fill,
            )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 400),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              height: 400,
              width: 395,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Let's expolre our Traditional ",
                      style: TextStyle(
                          color: Color(0xFFE35629),
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Text(
                    "market ",
                    style: TextStyle(
                        color: Color(0xFFE35629),
                        fontSize: 20,
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => signUpPage()));
                        },
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'SIGN IN',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
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
                  SizedBox(
                    height: 20,
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        fixedSize: Size(265, 60),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        side: BorderSide(color: Color(0xFFE35629))),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'SIGN UP',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                            size: 30,
                          )
                        ],
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Not now',
                      style: TextStyle(color: Color(0xFFE35629), fontSize: 13),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
