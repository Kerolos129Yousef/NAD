import 'package:flutter/material.dart';

class HeaderDrawer extends StatelessWidget {
  const HeaderDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red.withOpacity(0.9),
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 80,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage("assets/images/drawer.PNG"))),
          ),
          Text("NAD",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              )),
          Text(
            "info@NAD.dev",
            style: TextStyle(
              color: Colors.grey[200],
              fontSize: 14,
            ),
          )
        ],
      ),
    );
  }
}
