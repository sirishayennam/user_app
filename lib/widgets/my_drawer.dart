//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:user_app/global/global.dart';
import 'package:user_app/mainscreens/splash_screen.dart';

class MyDrawer extends StatefulWidget {
  String? name;
  String? email;
  MyDrawer({this.email, this.name});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: [
        Container(
          height: 160,
          child: DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.black,
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.person,
                  size: 40,
                  color: Colors.grey,
                ),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.name.toString(),
                      style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                    
                      height: 10,
                    ),
                    Text(
                      widget.email.toString(),
                      style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        GestureDetector(
          onTap: () {},
          child: const ListTile(
            leading: Icon(
              Icons.history,
              color: Colors.white,
            ),
            title: Text(
              "History",
              style: TextStyle(color: Colors.white54),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: const ListTile(
            leading: Icon(
              Icons.person,
              color: Colors.white,
            ),
            title: Text(
              "Visit profile",
              style: TextStyle(color: Colors.white54),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: const ListTile(
            leading: Icon(
              Icons.info,
              color: Colors.white,
            ),
            title: Text(
              "About",
              style: TextStyle(color: Colors.white54),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            fAut.signOut();
            Navigator.push(
                context, MaterialPageRoute(builder: (c) => MySplashScreen()));
          },
          child: const ListTile(
            leading: Icon(
              Icons.logout,
              color: Colors.white,
            ),
            title: Text(
              "sign out",
              style: TextStyle(color: Colors.white54),
            ),
          ),
        )
      ]),
    );
  }
}
