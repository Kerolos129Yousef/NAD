import 'package:flutter/material.dart';

class GenderItem extends StatelessWidget {
  String text;
  String imagePath;
  GenderItem({required this.text, required this.imagePath});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black.withOpacity(0.5),width: 0.5),
            boxShadow: [
              BoxShadow(color: Colors.black.withOpacity(0.01),blurRadius: 7)
            ],
            borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        children: [
          SizedBox(height: 10,),
          Text(
            "$text",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
          SizedBox(height: 15,),
          Image.asset("$imagePath",)
        ],
      ),
    );
  }
}
