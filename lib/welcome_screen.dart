import 'package:add/home_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  static const String routeName = "WelcomeScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.withOpacity(0.9),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 60,),
          Text("Welcome",style: TextStyle(color: Colors.white,fontSize: 35),),
          SizedBox(height: 10,),
          Text("Check Anemia Disease without any pain.",style: TextStyle(color: Colors.white,fontSize: 17),),
          SizedBox(
            height: 40,
          ),
          Container(
            alignment: Alignment.center,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Container(
                  height: 330,
                  width: 330,
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 29, right: 38),
                    child: Image.asset(
                      "assets/images/doctor_icon.png",
                      width: 280,
                      height: 280,
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "We will ask you some \nQuesions to give you more accurate result.",
              style: TextStyle(fontSize: 25, color: Colors.white.withOpacity(0.9),height: 1.4),textAlign: TextAlign.start
             ,
            ),
          ),
          SizedBox(height: 40,),
          Container(
            margin: EdgeInsets.only(right: 20),
            alignment: Alignment.centerRight,
            child: SizedBox(
              width: 140,
                height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.red,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                ),
                onPressed: (){
                  Navigator.pushNamed(context, HomeScreen.routeName);
                },
                child: Row(
                  children: [
                    Text("Let's start.",style: TextStyle(fontSize: 16),),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),
          )
        ],
      ),

      );
  }
}
