import 'package:flutter/material.dart';

class AppBarGlobal extends StatelessWidget {
Function onBackBtnClick;
AppBarGlobal(this.onBackBtnClick);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(onPressed: (){
              onBackBtnClick();
            }, icon: Icon(Icons.arrow_back_ios_new,color: Colors.black,)),
            Text("Back",style: TextStyle(color: Colors.black),)
          ],

        ),
        Container(
            margin: EdgeInsets.only(right: 10),
            child: Image.asset("assets/images/NAD_app_icon.png",width: 50,height: 50,))
      ],
    );
  }
}
