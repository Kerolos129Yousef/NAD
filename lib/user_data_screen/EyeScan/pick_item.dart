import 'package:flutter/material.dart';

class PickItemWidget extends StatelessWidget {
  String title;
  String imageUrl;
  Function onClick;
  PickItemWidget({required this.title,required this.imageUrl,required this.onClick});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        onClick();
      },
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black,width: 1,style:BorderStyle.none),
          borderRadius: BorderRadius.circular(12)
        ),
        child: Column(
          children: [
            Image.asset(imageUrl,height: 60,width: 60,),
            Text(title)
          ],
        ),
      ),
    );
  }
}
