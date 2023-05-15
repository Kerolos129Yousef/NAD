import 'package:flutter/material.dart';

class SocialMediaDrawer extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Center(

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1,color: Colors.grey),
                borderRadius: BorderRadius.circular(25)
              ),
              padding: EdgeInsets.all(2),
              child: ImageIcon(AssetImage("assets/images/facebook.png"),color: Colors.grey,size: 25)),
          SizedBox(width: 20,),
    Container(
    decoration: BoxDecoration(
    border: Border.all(width: 1,color: Colors.grey),
    borderRadius: BorderRadius.circular(25)
    ),
    padding: EdgeInsets.all(2),
    child: ImageIcon(AssetImage("assets/images/google.png"),color: Colors.grey,size: 28,)),
          SizedBox(width: 20,),
          Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 1,color: Colors.grey),
                  borderRadius: BorderRadius.circular(25)
              ),
              padding: EdgeInsets.all(3),
              child: ImageIcon(AssetImage("assets/images/twitter.png"),color: Colors.grey,size: 23,))
          ,

        ],
      ),
    );
  }
}
