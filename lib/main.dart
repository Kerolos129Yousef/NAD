import 'package:add/home_screen.dart';
import 'package:add/login/login_screen.dart';
import 'package:add/result.dart';
import 'package:add/splash_screen.dart';
import 'package:add/user_data_screen/Gender/gender_tap.dart';
import 'package:add/user_data_screen/age_tap.dart';
import 'package:add/user_data_screen/country_tap.dart';
import 'package:add/user_data_screen/EyeScan/eye_image_tap.dart';
import 'package:add/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:add/loading_screen.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(new MyApp());
  });
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "NAD",
      initialRoute: SplashScreen.routeName,
     routes: {
        HomeScreen.routeName:(_)=>HomeScreen(),
       SplashScreen.routeName:(_)=>SplashScreen(),
       LoadingScreen.routeName:(_)=>LoadingScreen(),
       LoginScreen.routeName:(_)=>LoginScreen(),
       WelcomeScreen.routeName:(_)=>WelcomeScreen(),
       CountryTap.routeName:(_)=>CountryTap(),
       GenderTap.routeName:(_)=>GenderTap(),
       AgeTap.routeName:(_)=>AgeTap(),
       EyeImageTap.routeName:(_)=>EyeImageTap(),
       ResultScreen.routeName:(_)=>ResultScreen()
     },
      debugShowCheckedModeBanner: false,

    );
  }
}



