import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsman/Widgets/uihelper.dart';

class Loginscreen extends StatefulWidget{
  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  String selectedcountry="India";
  List<String>countries=[
    "India",
    "United States",
    "United Kingdom",
    "Canada",
    "Australia",
    "Germany",
    "France",
    "Italy",
    "Spain",
    "Brazil",
    "Mexico",
    "Japan",
    "China",
    "South Korea",
    "Singapore",
    "Malaysia",
    "Indonesia",
    "Thailand",
    "United Arab Emirates",
    "Saudi Arabia",
    "Qatar",
    "Kuwait",
    "Nepal",
    "Bangladesh",
    "Sri Lanka",
    "Pakistan",
    "South Africa",
    "New Zealand",
    "Russia",
    "Turkey",
  ];
  @override
  Widget build(BuildContext context) {
    TextEditingController? phoneController;
    return Scaffold(
body: Column(children: [
  SizedBox(height: 80,),
  Center(
    child:  Uihelper.CustomText(text: "Enter Your Phone number", height: 18,color: Color(0XFF00A884),fontweight: FontWeight.bold),
  ),
  SizedBox(height: 30,),
  Uihelper.CustomText(text: "WhatsApp will need to verify your phone", height: 16,color: Color(0XFF5E5E5E)),
  Uihelper.CustomText(text: "number. Carrier charges may apply.", height: 16,color: Color(0XFF5E5E5E)),
  Uihelper.CustomText(text: "What's my number.", height: 16,color: Color(0XFF00A884)),
  SizedBox(height: 50,),
  Padding(
    padding: const EdgeInsets.only(left: 60,right: 60),
    child: DropdownButtonFormField(items: countries.map((String country) {
      return DropdownMenuItem(child: Text(country.toString()), value: country,);
    }).toList(), onChanged: (value){
      setState(() {
        selectedcountry=value!;
      });
    },value: selectedcountry.toString(),decoration: InputDecoration(
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Color(0XFF00A884))
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Color(0XFF00A884))
      )
    ),),
  ),
  SizedBox(height: 20,),
  Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 60),
        child: SizedBox(
         width: 30,
          child: TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: "+91",
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0XFF00A884))
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0XFF00A884))
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0XFF00A884))
              )
            ),
          ),
        ),
      ),
      Expanded(child: Padding(
        padding: const EdgeInsets.only(left: 20,right: 60),
        child: SizedBox(
          child: TextField(
            keyboardType: TextInputType.number,
            controller: phoneController,
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0XFF00A884)))
              )
            ),
          ),
      ),
      )

    ],
  )

],),
      floatingActionButton: Uihelper.CustomButton(callback: (){}, buttonname: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}