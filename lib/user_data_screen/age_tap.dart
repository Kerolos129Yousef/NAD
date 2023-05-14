import 'package:add/user_data_screen/eye_image_tap.dart';
import 'package:flutter/material.dart';
import 'package:horizontal_picker/horizontal_picker.dart';

import '../data_of_model.dart';
import '../util/app_bar_global.dart';
import '../util/utilities.dart';

class AgeTap extends StatelessWidget {
  static const String routeName="AgeScreen";
  double Age =0;
  @override
  Widget build(BuildContext context) {
    var Arg = ModalRoute.of(context)?.settings.arguments as DataOfModel;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: AppBarGlobal(
                (){
              Navigator.pop(context);
            }
        ),
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(height: 0,),
            Utilites(
              pageNumer: "3",
              pageTitle: "What's your Age?",
              pageSubTitle:
                  "To give you a better experiance we need \n to know your Age",
            ),
            SizedBox(height: 30,),
            Image.asset("assets/images/Age_icon_t.png",width: 290,height: 290,),
            SizedBox(height: 25,),
        HorizontalPicker(
          minValue: 14,
          maxValue: 80,
          divisions: 80-14,
          height: 120,
          backgroundColor: Colors.white,
          onChanged: (value) {
            Age = value;
            print(Age.toInt());
          },
        ),
            SizedBox(height: 70,),

          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        margin: EdgeInsets.only(bottom: 20),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, EyeImageTap.routeName,arguments: DataOfModel(Arg.Country,Arg.Gender, Age.toString(),""));
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
        ),
      ),
    );
  }
}
