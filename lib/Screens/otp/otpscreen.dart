import 'package:flutter/material.dart';
import 'package:whatsman/Widgets/uihelper.dart';

class Otpscreen extends StatefulWidget {
  final String phonenumber;
TextEditingController otp1Controller = TextEditingController();
  TextEditingController otp2Controller = TextEditingController();
  TextEditingController otp3Controller = TextEditingController();
  TextEditingController otp4Controller = TextEditingController();
  TextEditingController otp5Controller = TextEditingController();
  TextEditingController otp6Controller = TextEditingController();

  Otpscreen({super.key, required this.phonenumber});

  @override
  State<Otpscreen> createState() => _OtpscreenState();
}

class _OtpscreenState extends State<Otpscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Uihelper.CustomText(text: "Verify your number",
              height:20,
              color: Color(0XFF00A884),
              fontweight: FontWeight.bold),
            SizedBox(height: 30,),
            Uihelper.CustomText(text: "You’ve tried to register +91 ${widget.phonenumber}", height: 15),
            Uihelper.CustomText(text: "recently. Wait before requesting an sms or a call.", height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Uihelper.CustomText(text: "with your code.", height: 15),
                GestureDetector(onTap: (){
                  Navigator.pop(context);
                },child: Uihelper.CustomText(text: "Wrong Number?", height: 15,color: Color(0XFF00A884)),)

          ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
              Uihelper.CustomContainer(widget.otp1Controller),
                SizedBox(width: 10),
                Uihelper.CustomContainer(widget.otp2Controller),
                SizedBox(width: 10),
                Uihelper.CustomContainer(widget.otp3Controller),
                SizedBox(width: 10),
                Uihelper.CustomContainer(widget.otp4Controller),
                SizedBox(width: 10),
                Uihelper.CustomContainer(widget.otp5Controller),
                SizedBox(width: 10),
                Uihelper.CustomContainer(widget.otp6Controller),
            ],
            ),
            SizedBox(height: 30,),
            Uihelper.CustomText(text: "Didnt recieve code?", height: 14,color: Color(0XFF00A884))
          ],
        ),
      ),
      floatingActionButton:
      Uihelper.CustomButton(callback: (){}, buttonname: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}