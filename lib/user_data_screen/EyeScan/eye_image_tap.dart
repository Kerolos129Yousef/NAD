

import 'dart:io';

import 'package:add/result.dart';
import 'package:add/user_data_screen/EyeScan/pick_item.dart';
import 'package:add/util/utilities.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../data_of_model.dart';
import '../../util/app_bar_global.dart';

class EyeImageTap extends StatefulWidget {
  static const String routeName="EyeImageScreen";
  @override
  State<EyeImageTap> createState() => _EyeImageTapState();
}

class _EyeImageTapState extends State<EyeImageTap> {
  // final picker = ImagePicker();
  // File? file ;
  // XFile? pickedImage;

  File? _image;



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
            SizedBox(height: 10,),
             // Column(
             //   children: [
             //     customButton(title: "Pick from Gallery",icon: Icons.image,onClick: (){}),
             //     SizedBox(height: 15,),
             //     customButton(title: "Pick from Camera",icon: Icons.camera_alt_outlined, onClick: pickImage)
             //
             //   ],
             // ),
            //------------------------
            //anthor way
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 PickItemWidget(title: "Pick from Camera",imageUrl: "assets/images/camera.PNG",onClick:PickImageFromCamera ,),
                 PickItemWidget(title: "Pick from Gallery",imageUrl: "assets/images/Gallery.PNG",onClick:PickImageFromGallery ,),
               ],
             ),

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
            Navigator.pushNamed(context, ResultScreen.routeName,arguments: DataOfModel(Arg.Country, Arg.Gender, Arg.Age,_image ));
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
  //---------------------------------
//old way to pick image
  // Future pickImage()async {
  //    pickedImage = await ImagePicker().pickImage(source: ImageSource.camera);
  //    setState(() {
  //      file = File(pickedImage!.path);
  //    });
  // }
  //---------------------------------------------
  // Widget customButton({required String title,required IconData icon, required VoidCallback onClick}){
  //   return ElevatedButton(
  //       style: ElevatedButton.styleFrom(
  //           minimumSize: Size(0, 50)
  //       ),
  //       onPressed: (){
  //         onClick();
  //       }, child: Row(
  //         children: [
  //           Icon(icon),
  //           SizedBox(width: 10,),
  //           Text(title,style: TextStyle(
  //           fontSize: 17
  //   ),),
  //         ],
  //       ));
  // }
  Future PickImageFromCamera()async{
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if(image == null){
        return;
      }
      final imageTemporary = File(image.path);
      setState(() {
        this._image = imageTemporary;
      });
  }
  Future PickImageFromGallery()async{
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if(image == null){
      return;
    }
    final imageTemporary = File(image.path);
    setState(() {
      this._image = imageTemporary;
    });
  }
}
