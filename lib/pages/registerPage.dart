import 'package:flutter/material.dart';

class registerPage extends StatefulWidget {
  const registerPage({super.key});

  @override
  State<registerPage> createState() => _registerPageState();
}

class _registerPageState extends State<registerPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
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
            padding: const EdgeInsets.only(top: 300),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              height: 600,
              width: 395,
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Container(
                      height: 60,
                      width: 265,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFE35629)),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: '   Email',
                            suffixIcon: Icon(Icons.check, color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Container(
                      height: 60,
                      width: 265,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFE35629)),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: '   Password',
                            suffixIcon: Icon(Icons.visibility_off_outlined,
                                color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
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
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Sign Up',
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
                  Text(
                    'OR',
                    style: TextStyle(
                      color: Color(0xFFE35629),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    color: Color(0xFFE35629),
                    child: SizedBox(
                      height: 2,
                      width: 300,
                    ),
                  ),
                  Container()
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}