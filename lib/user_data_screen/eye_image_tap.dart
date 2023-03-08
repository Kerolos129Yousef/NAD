

import 'dart:io';

import 'package:add/util/utilities.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class EyeImageTap extends StatefulWidget {
  @override
  State<EyeImageTap> createState() => _EyeImageTapState();
}

class _EyeImageTapState extends State<EyeImageTap> {
  final picker = ImagePicker();
  File? file ;
  XFile? pickedImage;



  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
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


        ],
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
