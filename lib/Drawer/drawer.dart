import 'package:flutter/material.dart';
import 'body_drawer.dart';
import 'header_drawer.dart';

class DrawerWidget extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width*0.7,
      child: SingleChildScrollView(
        child: Column(
          children: [
            HeaderDrawer(),
            BodyDrawer(),


          ],
        ),
      ),
    );
  }
}
