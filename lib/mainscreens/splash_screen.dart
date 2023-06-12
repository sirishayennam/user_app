import 'dart:async';

import 'package:flutter/material.dart';
import 'package:user_app/assistant/assistant_method.dart';
import 'package:user_app/authentication/login_screen.dart';
import 'package:user_app/global/global.dart';
import 'package:user_app/mainscreens/main_Screen.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({super.key});

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  startTimer() {
   fAut.currentUser!=null? AssistantMethods.redCurrentOnlineUserInfo():null;
    Timer(Duration(seconds: 3), () async {
      if (await fAut.currentUser != null) {
        currentFirebaseUser = fAut.currentUser;
        Navigator.push(
            context, MaterialPageRoute(builder: (c) => MainScreen()));
      } else {
        Navigator.push(
            context, MaterialPageRoute(builder: (c) => LoginScreen()));
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
                height: 300,
                fit: BoxFit.cover,
                "https://th.bing.com/th/id/OIP.bpIVAmJjsOrOx10gpzlzQQHaE8?w=278&h=186&c=7&r=0&o=5&pid=1.7"),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Under &indriver Clone App",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
