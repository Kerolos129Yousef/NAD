import 'package:add/data_of_model.dart';
import 'package:add/user_data_screen/age_tap.dart';
import 'package:flutter/material.dart';

import '../../util/app_bar_global.dart';
import 'gender_item.dart';

class GenderTap extends StatelessWidget {
  static const String routeName="GenderScreen";
  String Gender = "";

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

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "2",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 25, height: 2),
                ),
                Text(
                  "/4",
                  style: TextStyle(
                      fontSize: 18, color: Colors.black.withOpacity(0.7)),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "What's your gender?",
              style: TextStyle(
                  color: Colors.black, fontSize: 25, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "To give you a better experiance we need \n to know your Gender",
              textAlign: TextAlign.center,
              style:
                  TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 18),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        Gender = "Male";
                        print(Gender);
                      },
                      child: GenderItem(
                        text: "Male",
                        imagePath: "assets/images/male_icon_t.png",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        Gender="Female";
                        print(Gender);
                      },
                      child: GenderItem(
                        text: "Female",
                        imagePath: "assets/images/Female_icon_t.png",
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        margin: EdgeInsets.only(bottom: 20),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, AgeTap.routeName,arguments:DataOfModel(Arg.Country, Gender, "", ""));
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
   onItemClick(String text){
    Gender = text;
    print(Gender);

    
  }
}
