import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
static const String routeName ="LoadingScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0 ,
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        title: Text("ADD",style: TextStyle(color: Color.fromRGBO(215, 215, 215, 1)),),
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 30,vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("Stay Tuned!",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),textAlign: TextAlign.center),
            SizedBox(height:20 ,),
            Center(child: Image.asset("assets/images/roket_logo.png",width: 230,height: 230,)),
            SizedBox(height: 30,),
            Text("Our app is about to launch. \nWe will notify you once the app is ready.",style: TextStyle(fontSize: 20,height: 1.3,color: Color.fromRGBO(81,83,83,1)),),
            SizedBox(height: 50,),
            Text("تطبيق Add قيد الانطلاق؛ \nسنخطرك بمجرد ان يصبح التطبيق جاهز للأستخدام.",style:TextStyle(fontSize: 20,height: 1.1,color: Color.fromRGBO(81,83,83,1)) ,textDirection:TextDirection.rtl,),
            SizedBox(height: 60,),
            ElevatedButton(onPressed: (){}, child: Text("USE NOW OUR WEBSITE",style: TextStyle(color: Color.fromRGBO(215, 215, 215, 1)),),style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,fixedSize: Size(60,40),

            ),)
          ],
        ),
      ),
    );
  }
}
