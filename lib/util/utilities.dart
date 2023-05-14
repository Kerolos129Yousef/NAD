import 'package:flutter/material.dart';

class Utilites extends StatelessWidget {
  String pageNumer;
  String pageTitle;
  String pageSubTitle;
  Utilites(
      {required this.pageNumer,
      required this.pageTitle,
      required this.pageSubTitle});
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      SizedBox(
        height: 0,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$pageNumer",
            style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 25, height: 2),
          ),
          Text(
            "/4",
            style:
                TextStyle(fontSize: 18, color: Colors.black.withOpacity(0.7)),
          )
        ],
      ),
      SizedBox(
        height: 15,
      ),
      Text(
        "$pageTitle",
        style: TextStyle(
            color: Colors.black, fontSize: 25, fontWeight: FontWeight.w500),
      ),
      SizedBox(
        height: 20,
      ),
      Text(
        "$pageSubTitle",
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 18),
      ),
    ]);
  }
}
