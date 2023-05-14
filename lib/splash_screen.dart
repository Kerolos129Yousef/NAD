import 'dart:async';

import 'package:add/home_screen.dart';
import 'package:add/loading_screen.dart';
import 'package:add/login/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
static const String routeName = "SplashScreen";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {

    super.initState();
    Timer(Duration(seconds: 2),() {
      Navigator.pushNamed(context, LoginScreen.routeName);
    }, );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 245,),
          Center(child: Image.asset("assets/images/NAD_app_icon.png",width: MediaQuery.of(context).size.width*0.93,)),
          SizedBox(height: 70,),
          CircularProgressIndicator(color: Colors.red,)
        ],
      ),
    );
  }
}
