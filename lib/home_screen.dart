import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
static const String routeName = "HomeScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        child: Icon(Icons.add),
        backgroundColor: Colors.black87,
        foregroundColor: Colors.yellow,
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(color: Colors.red,width: 2,style: BorderStyle.solid)
        ),


      ),

    );
  }
}
