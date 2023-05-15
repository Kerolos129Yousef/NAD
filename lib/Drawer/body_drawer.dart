import 'package:add/Drawer/social_media_drawer.dart';
import 'package:add/setting_tap.dart';
import 'package:flutter/material.dart';

class BodyDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(Icons.search),
          title: Text("Know more about Anemia"),
          onTap: (){
            Navigator.pushNamed(context, SettingTap.routeName);
          },
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text("Settings"),
          onTap: (){
            Navigator.pushNamed(context, SettingTap.routeName);
          },
        ),
        ListTile(
          leading: Icon(Icons.people),
          title: Text("Who us"),
          onTap: (){
            Navigator.pushNamed(context, SettingTap.routeName);
          },
        ),
        ListTile(
          leading: Icon(Icons.email_rounded),
          title: Text("Contact us"),
          onTap: (){
            Navigator.pushNamed(context, SettingTap.routeName);
          },
        ),
        SizedBox(height: 10,),
        Container(
          height: 2,
          width: double.infinity,
          color: Colors.grey,
          margin: EdgeInsets.symmetric(horizontal: 20),
        )
        ,
        SizedBox(height: 20,),
        SocialMediaDrawer()

      ],
    );
  }
}
