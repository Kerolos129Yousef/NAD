

import 'dart:io';

import 'package:add/result.dart';
import 'package:add/util/utilities.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../data_of_model.dart';
import '../util/app_bar_global.dart';

class EyeImageTap extends StatefulWidget {
  static const String routeName="EyeImageScreen";
  @override
  State<EyeImageTap> createState() => _EyeImageTapState();
}

class _EyeImageTapState extends State<EyeImageTap> {
  final picker = ImagePicker();
  File? file ;
  XFile? pickedImage;



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
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10,),
            Utilites(
                pageNumer: "4",
                pageTitle: "Let's Scan your eye.",
                pageSubTitle:
                    "To give you a better experiance we need \n to Scan your eye"),
            SizedBox(height: 20,),
            Image.asset("assets/images/eye_detection_t.png",width: 300,height: 300,),
            SizedBox(height: 30,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 50)
              ),
                onPressed: (){
                pickImage();
                }, child: Text("Scan My Eye",style: TextStyle(
              fontSize: 17
            ),)),
              SizedBox(
                height: 100,
              ),

          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        margin: EdgeInsets.only(bottom: 20),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, ResultScreen.routeName,arguments: DataOfModel(Arg.Country, Arg.Gender, Arg.Age, ""));
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

  Future pickImage()async {
     pickedImage = await ImagePicker().pickImage(source: ImageSource.camera);
     setState(() {
       file = File(pickedImage!.path);
     });
  }
}
