import 'package:add/home_screen.dart';
import 'package:add/login/button_global.dart';
import 'package:add/login/social_login.dart';
import 'package:flutter/material.dart';
import 'package:add/login/FormField.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = "LoginScreen";
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: (){
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              padding: EdgeInsets.all(18),
              width: double.infinity,
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image.asset("assets/images/ADD_app_logo.png" , height: 200,width: 400,),
                  ),
                      SizedBox(
                        height: 20,
                      ),
                  Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Text(
                      "Login to your account",
                      style: TextStyle(fontSize: 18,color: Colors.black.withOpacity(0.7)),
                    ),
                  ),
                  SizedBox(
                    height: 30 ,
                  ),
                  GlobalTextField(
                    controller: emailController,
                    text: "Email",
                    obscure: false,
                    textInputType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GlobalTextField(
                    controller: passwordController,
                    text: "Password",
                    obscure: true,
                    textInputType: TextInputType.text,
                  ),
                  SizedBox(height: 30,),
                  ButtonGlobal(),
                  SizedBox(height: 40,),

                  SocialLogin(),



                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 100,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?"),
                InkWell(
                  onTap: (){
                    print("going to sign up page");
                  },
                  child: Text(" Sign up",style: TextStyle(
                      color: Colors.red,
                    decoration: TextDecoration.underline
                  ),),
                )
              ],
            ),
            SizedBox(height: 25,),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, HomeScreen.routeName);
              },
                child: Container(
                padding: EdgeInsets.only(bottom: 1),
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(
                    color: Colors.black,
                    width: 0.5
                  ))
                ),
              child: Text("Skip for now",style: TextStyle(
                color: Colors.black.withOpacity(0.7)
              ),),
            ))
          ],
        ) ,
      ),
    );
  }
}
