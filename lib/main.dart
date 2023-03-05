import 'package:add/home_screen.dart';
import 'package:add/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:add/loading_screen.dart';
void main() {
  runApp( MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SplashScreen.routeName,
     routes: {
        HomeScreen.routeName:(_)=>HomeScreen(),
       SplashScreen.routeName:(_)=>SplashScreen(),
       LoadingScreen.routeName:(_)=>LoadingScreen()
     },
      debugShowCheckedModeBanner: false,

    );
  }
}



