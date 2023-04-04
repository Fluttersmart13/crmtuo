import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utility/custome_popups.dart';

class Question extends StatelessWidget{
  double screenWidth = 600;
  double screenHeight = 400;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(title: Text("Question")),
      body: ListView(
        children: [
          const SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.only(left: 10.0,right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextStyle.extraBold(text: "Quiz : 60",fontSize: 18,color: Colors.white),
                CustomTextStyle.extraBold(text: "03:00 min",fontSize: 18,color: Colors.white),
              ],
            ),
          ),
          Divider(thickness: 2,color: Colors.black54,),
          const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 10.0,right: 10.0),
            child: Text("1. Which space agency has decided to carry out first all-female spacewalk at the International Space Station (ISS)?"
            ,style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),),
          ),
          const SizedBox(height: 30,),
          CardLeft(context,text: "A",color1: Colors.white,title: "Roscosmos",fontSize: 16),
          const SizedBox(height: 10,),
          CardRight(context,text: "X",color1: Colors.orange,title: "NASA",fontSize: 16,color2: Colors.white),
          const SizedBox(height: 10,),
          CardLeft(context,text: "C",color1: Colors.white,title: "ISRO",fontSize: 16),
          const SizedBox(height: 10,),
          CardLeft(context,text: "D",color1: Colors.white,title: "JAVA",fontSize: 16),

          Container(
            height: 55,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(left: 0.0),
            margin: EdgeInsets.only(left: 5.0,right: 5.0,top: screenHeight*0.22),
            decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(10)
           ),
           child: Center(child: CustomTextStyle.bold(text: "SUBMIT",fontSize: 18,color: Colors.white)),
           ),
        ],
      ),
    );
  }

  Widget CardLeft(BuildContext context, {String? text,String? title ,double? fontSize, Color? color1,Color? color2,})
  {
    return Container(
      height: 55,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(left: 0.0),
      margin: EdgeInsets.only(left: 5.0,right: 5.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(60)
        //more than 50% of width makes circle
      ),
      child: Row(
        children: [
          SizedBox(
            height: 48,
            width: 60,
            child: CircleAvatar(
              backgroundColor: Colors.orange,
              child: Text(text!,style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
                color:color1
              ),),
            ),
          ),
          const SizedBox(width: 30,),
          Text(title!,style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: fontSize,
              color: color2
          ),),
        ],
      ),

    );
  }

  Widget CardRight(BuildContext context, {String? text,String? title ,double? fontSize, Color? color1,Color? color2,}){
    return Container(
      height: 55,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(left: 0.0),
      margin: EdgeInsets.only(left: 5.0,right: 5.0),
      decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(60)
        //more than 50% of width makes circle
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(title!,style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: fontSize,
              color: color2
          ),),
          const SizedBox(width: 205,),
          SizedBox(
            height: 48,
            width: 60,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text(text!,style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                  color:color1
              ),),
            ),
          ),
        ],
      ),

    );
  }
}