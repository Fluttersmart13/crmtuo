

import 'package:crmtuo/utility/custome_popups.dart';
import 'package:flutter/material.dart';



Future<void> CongratesPopup(BuildContext context) {
  return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return CongratesDialog();
      });
}



class CongratesDialog extends StatefulWidget {
  @override
  State<CongratesDialog> createState() => _CongratesDialogState();
}

class _CongratesDialogState extends State<CongratesDialog> {
  double screenWidth = 600;
  double screenHeight = 400;


  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    return AlertDialog(
      backgroundColor: Colors.transparent,
      actions: [
        Icon(Icons.cancel_outlined,size: 30,color: Colors.white,),
        Container(
          margin: EdgeInsets.only(top: 60),
          height: screenHeight*0.55,
          width:screenWidth ,
          decoration: BoxDecoration(
              color: Colors.white,
              // border: Border.all(width: 10),
              borderRadius: BorderRadius.circular(20)
          ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 150,
                 width: 150,
                child: Image.asset(
                  "assets/png/win.png",
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 5.0),
              CustomTextStyle.extraBold(text: "Congrates!",fontSize: 26),
              const SizedBox(height: 15.0),
              CustomTextStyle.extraBold(text: "90 % Score",fontSize: 30,color: Colors.green),
              const SizedBox(height: 15.0),
              CustomTextStyle.extraBold(text: "Quiz completed successfully.",fontSize: 20),
              const SizedBox(height: 15.0),
              RichText(
                text: TextSpan(
                  style: TextStyle(color: Colors.black54, fontSize: 18),
                  children: <TextSpan>[
                    TextSpan(text: 'You attempt ', style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: '60 questions ',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold)),
                    TextSpan(text: 'and', style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  style: TextStyle(color: Colors.black54, fontSize: 18),
                  children: <TextSpan>[
                    TextSpan(text: 'from that ', style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: '58 answers ',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold)),
                    TextSpan(text: 'is correct', style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomTextStyle.regular(text: "Share with us:",fontSize: 18),
                    Icon(Icons.message_rounded),
                    Icon(Icons.facebook),
                    Icon(Icons.whatsapp),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
