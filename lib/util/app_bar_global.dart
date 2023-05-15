import 'package:flutter/material.dart';

class AppBarGlobal extends StatelessWidget {
  Function onBackBtnClick;
  AppBarGlobal(this.onBackBtnClick);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(
                onPressed: () {
                  onBackBtnClick();
                },
                icon: Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.black,
                )),
            Text(
              "Back",
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
        Container(
            margin: EdgeInsets.only(right: 10),
            child: Builder(builder: (context) {
              return InkWell(
                  onTap: () {
                    Scaffold.of(context).openDrawer();
                  },
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Image.asset(
                        "assets/images/NAD_app_icon.png",
                        width: 50,
                        height: 50,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 9, bottom: 2.5,),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(color: Colors.black,width: 0.5)
                        ),
                        child: CircleAvatar(
                            backgroundColor: Colors.red,
                            radius: 8,
                            child: Icon(
                              Icons.menu_rounded,
                              color: Colors.white,
                              size: 10,
                            )),
                      )
                    ],
                  ));
            }))
      ],
    );
  }
}
