import 'dart:io';
import 'package:add/user_data_screen/age_tap.dart';
import 'package:add/user_data_screen/country_tap.dart';
import 'package:add/user_data_screen/eye_image_tap.dart';
import 'package:add/user_data_screen/Gender/gender_tap.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> UserDataTaps = [
    CountryTap(),
    GenderTap(),
    AgeTap(),
    EyeImageTap()
  ];
  int selectedIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        onPressed: () {
                          if (selectedIndex != 0) {
                            selectedIndex -= 1;
                            setState(() {});
                          } else {
                            exit(0);
                          }
                        },
                        color: Colors.black,
                      ),
                      Text(
                        "Back",
                        style: TextStyle(color: Colors.black.withOpacity(0.7)),
                      )
                    ],
                  ),
                ],
              ),
              Image.asset("assets/images/ADD_app_icon.png",width: 60,height: 50,)
            ],
          ),
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        backgroundColor: Color.fromRGBO(237, 237, 237, 1),
        body: UserDataTaps[selectedIndex],
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if(selectedIndex<3){
            selectedIndex += 1;
            setState(() {});}
            else{

            }
          },
          child: Icon(
            Icons.water_drop_outlined,
            size: 30,
          ),
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          shape: StadiumBorder(
              side: BorderSide(
                  color: Colors.white, width: 5, style: BorderStyle.solid)),
        ));
  }
}
