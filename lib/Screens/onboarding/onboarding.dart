import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsman/Screens/login/loginscreen.dart';
import 'package:whatsman/Widgets/uihelper.dart';
class OnboardingScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Image.asset("assets/images/image1.png"),
            SizedBox(height: 20,),
            Uihelper.CustomText(text: "Welcome to WhatsApp",
                height: 20,
                color: Color(0XFF000000)),
            SizedBox(height: 20,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Uihelper.CustomText(text: "Read out", height: 14),
                Uihelper.CustomText(text: " our privacy policy", height: 14,color: Color(0XFF00A884)),
                Uihelper.CustomText(text: " Tap 'Agree and Continue'", height: 14)
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Uihelper.CustomText(text: "to accept the ", height: 14),
                Uihelper.CustomText(text: " Teams of Service.", height: 14,color: Color(0XFF00A884)),
              ],
            )
        ],),
      ),
      floatingActionButton: Uihelper.CustomButton(callback: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginscreen()));

      }, buttonname: "Agree and Continue"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}