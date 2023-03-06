import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialLogin extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Text("- Or sign in with -",style: TextStyle(color: Colors.black.withOpacity(0.5),),)),
        SizedBox(height: 30,),
        Container(
          width: MediaQuery.of(context).size.width*0.8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              Expanded(
                child: Container(
                  alignment: Alignment.center,
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 7
                        )
                      ]
                    ),
                    child: Image.asset("assets/images/google.png",height: 40,)),
              ),
              SizedBox(width: 10,),
              Expanded(
                child: Container(
                    alignment: Alignment.center,
                    height: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 7
                          )
                        ]
                    ),
                    child: Image.asset("assets/images/facebook.png",height: 30,)),
              ),
              SizedBox(width: 10,),
              Expanded(
                child: Container(
                    alignment: Alignment.center,
                    height: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 7
                          )
                        ]
                    ),
                    child: Image.asset("assets/images/twitter.png",height: 25,)),
              ),
            ],
          ),
        )
      ],
    );
  }
}
