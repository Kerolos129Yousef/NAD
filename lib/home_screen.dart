
import 'package:add/setting_tap.dart';
import 'package:add/user_data_tap.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
static const String routeName = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
List<Widget>AppTaps=[UserDataTap(),SettingTap()];
int selectedIndex =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Center(child: Text("User Data",style: TextStyle(color: Color.fromRGBO(61,61,61,1)),)),
      ),
      backgroundColor:Color.fromRGBO(237,237,237,1) ,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(

        onPressed: () {

        },
        child: Icon(Icons.water_drop_outlined,size: 30,),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        shape: StadiumBorder(

          side: BorderSide(color: Colors.white,width: 5,style: BorderStyle.solid)
        ),


      ),
        bottomNavigationBar: BottomAppBar(
          shape:CircularNotchedRectangle(
          ),
          notchMargin: 10,
          color: Colors.white,
          elevation:0,

          child: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Colors.white
            ),
            child: BottomNavigationBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              selectedItemColor: Colors.red,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              currentIndex: selectedIndex,
              onTap: (index){
                selectedIndex = index;
                setState(() {

                });
              },
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined,size: 30),label:"" ),
                BottomNavigationBarItem(icon: Icon(Icons.settings,size: 30,),label:"" )
              ],
            ),
          ),
        ),
      body: AppTaps[selectedIndex],
    );

  }
}
