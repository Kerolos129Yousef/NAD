
import 'package:add/user_data_screen/EyeScan/eye_image_tap.dart';
import 'package:flutter/material.dart';
import 'package:horizontal_picker/horizontal_picker.dart';

import '../Drawer/drawer.dart';
import '../data_of_model.dart';
import '../util/app_bar_global.dart';
import '../util/utilities.dart';

class AgeTap extends StatefulWidget {
  static const String routeName="AgeScreen";

  @override
  State<AgeTap> createState() => _AgeTapState();
}

class _AgeTapState extends State<AgeTap> {
  double Age =0;

   bool fabEnable = false;

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
            fabEnable = true;
            setState(() {

            });

            print(Age.toInt());
          },
        ),
            SizedBox(height: 70,),

          ],
        ),
      ),
      drawer:DrawerWidget(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        margin: EdgeInsets.only(bottom: 20),
        child: fabEnable? FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, EyeImageTap.routeName,arguments: DataOfModel(Arg.Country,Arg.Gender, Age.toString(),null));
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
        ):FloatingActionButton(
          onPressed: () => null,

      child: Icon(
        Icons.water_drop_outlined,
        size: 30,
      ),
      backgroundColor: Color.fromRGBO(63,22,23,1),
      foregroundColor: Colors.white,
      shape: StadiumBorder(
          side: BorderSide(
              color: Colors.white,
              width: 5,
              style: BorderStyle.solid)),
    ),
      ),
    );
  }
}
