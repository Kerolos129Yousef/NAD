import 'package:flutter/material.dart';
import 'package:horizontal_picker/horizontal_picker.dart';

import '../util/utilities.dart';

class AgeTap extends StatelessWidget {
  double Age =0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      color: Colors.white,
      child: Column(
        children: [
          Utilites(
            pageNumer: "3",
            pageTitle: "What's your Age?",
            pageSubTitle:
                "To give you a better experiance we need \n to know your Age",
          ),
          SizedBox(height: 30,),
          Image.asset("assets/images/Age_icon_t.png",width: 270,height: 270,),
          SizedBox(height: 20,),
      HorizontalPicker(
        minValue: 14,
        maxValue: 80,
        divisions: 80-14,
        height: 120,
        onChanged: (value) {
          Age = value;
          print(Age.toInt());
        },
      ),
          
        ],
      ),
    );
  }
}
