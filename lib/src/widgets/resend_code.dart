
import 'package:flutter/material.dart';

class ResendCode extends StatefulWidget{

  @override
  State<ResendCode> createState()=>ResendCodeState();
}

class ResendCodeState extends State<ResendCode>{

  double time = 0.0; 


  @override
  Widget build(BuildContext context){

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Didn’t receive code?",
            style: TextStyle(
              fontFamily: "Figtree",
              fontWeight: FontWeight(400),
              fontSize: 13,
              color: Color(0xFF797979),
            ),
          ),
          SizedBox(width:5),
          Text(
              "Resend in ${time}",
              style: TextStyle(
                fontFamily: "Figtree",
                fontWeight: FontWeight(400),
              fontSize: 13
              ),
          ),
        ],
      ),
    );


  }


}