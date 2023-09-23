import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:vastu/pages/mainPage/HomePage.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:vastu/pages/mainPage/martPage.dart';
import 'package:vastu/pages/mainPage/yoPage.dart';
import 'package:vastu/pages/services/auth_service.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailtextController = TextEditingController();
  final passtextController = TextEditingController();
  bool showSpinner = false;

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: showSpinner,
      child: SafeArea(
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
                    color: Color(0xFF17181D),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                height: 420,
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
                          border: Border.all(color: Color(0xFF1A9EB0)),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: TextFormField(
                            controller: emailtextController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: '   Email',
                              hintStyle: TextStyle(color: Colors.white),
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
                          border: Border.all(color: Color(0xFF1A9EB0)),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: TextFormField(
                            obscureText: true,
                            controller: passtextController,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintStyle: TextStyle(color: Colors.white),
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
                          color: Color(0xFF1A9EB0)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: TextButton(
                          onPressed: () async {
                            setState(() {
                              showSpinner = true;
                            });
                            try {
                              final User = await FirebaseAuth.instance
                                  .signInWithEmailAndPassword(
                                      email: emailtextController.text,
                                      password: passtextController.text);
                              if (User != null) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MartPage()));
                              }
                            } catch (e) {
                              print(e);
                            }
                            setState(() {
                              showSpinner = false;
                            });
                          },
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Sign In',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
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
                        color: Color(0xFF1A9EB0),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      color: Color(0xFF1A9EB0),
                      child: SizedBox(
                        height: 2,
                        width: 300,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () async {
                        try {
                          final User = await AuthService().signInWithGoogle();
                          if (User != null) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => yoWidget()));
                          }
                        } catch (e) {
                          print(e);
                        }
                      },
                      child: Image(
                        image: AssetImage("lib/images/google.png"),
                        height: 40,
                        width: 40,
                      ),
                    ),
                    Container()
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
