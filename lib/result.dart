import 'package:flutter/material.dart';

import 'data_of_model.dart';

class ResultScreen extends StatelessWidget {
static const String routeName = "ResultScreen";
  @override
  Widget build(BuildContext context) {
    var Arg = ModalRoute.of(context)?.settings.arguments as DataOfModel;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 50,),
          Center(child: Text(Arg.Age)),
          Center(child: Text(Arg.Gender)),
          Center(child: Text(Arg.Country)),
          Center(child: Image.file(Arg.Image!))
        ],
      ),
    );
  }
}
