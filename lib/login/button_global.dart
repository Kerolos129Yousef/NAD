import 'package:flutter/material.dart';

class ButtonGlobal extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        print("Login succuss");
      },
      child: Container(
        alignment: Alignment.center,
        height: 55,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [BoxShadow(color:Colors.black.withOpacity(0.1),blurRadius: 7)]
        ),
        child: Text("Sign In",style: TextStyle(color: Colors.white,fontSize: 16),),
      ),
    );
  }
}
