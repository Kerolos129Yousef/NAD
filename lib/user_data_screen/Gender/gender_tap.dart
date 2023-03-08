import 'package:flutter/material.dart';

import 'gender_item.dart';

class GenderTap extends StatelessWidget {
  String Gender = "";
  @override
  Widget build(BuildContext context) {
    return Container(

      color: Colors.white,
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
            height: 20,
          ),
          Text(
            "To give you a better experiance we need \n to know your Gender",
            textAlign: TextAlign.center,
            style:
                TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 17),
          ),
          SizedBox(
            height: 30,
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
          )
        ],
      ),
    );
  }
   onItemClick(String text){
    Gender = text;
    print(Gender);
    
  }
}
