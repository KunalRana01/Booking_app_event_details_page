
import 'package:flutter/material.dart';
import '../widgets/otp_input.dart';
import '../widgets/verify_btn.dart';
import '../widgets/resend_code.dart';
import '../../models/event.dart';

class OtpPage extends StatelessWidget{

  final Event event;

  const OtpPage({
    super.key,
    required this.event,
    });

  final String email = "asdfasdf@gmail.com";


  @override
  Widget build(BuildContext context){


    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ColoredBox(color: Colors.redAccent,
                child: IconButton(
                    onPressed: ()=>{Navigator.pop(context)},
                    icon:Image.asset("lib/src/images/backButton.png"),
                    tooltip:"Back"
                  ),
                  ),               
    
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 45.0),
                  child: Row(
                    
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("lib/src/images/mainLogo.png"),
                      SizedBox(width: 15.0),
                      Image.asset("lib/src/images/textLogo.png"),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(padding: EdgeInsets.only(top:45) , 
                    child: Text(
                        "Please enter OTP",
                        style: TextStyle(
                          fontFamily: "Figtree",
                          fontSize: 22,
                          fontWeight: FontWeight(600),
                        ),
                      ),
                    ),
                    
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 25),
                      child: Text(
                        "Email OTP sent to ${email}.",
                        style: TextStyle(
                          fontFamily: "Figtree",
                          color: Color(0xFF797979),
                          fontWeight: FontWeight(400)
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: ()=>print("Change button is pressed !"), 
                      child:Text(
                        "Change",
                        style: TextStyle(
                          fontFamily: "Figtree",
                          fontSize: 13,
                          fontWeight: FontWeight(500),
                          color: Color(0xFFFF405F),
                        ),
                      ),
                      ),


                  ],

                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const OtpInput(),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ 
                    VerfifyButton(),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ResendCode(),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                    onPressed: ()=>print("OTP Re-sent !"), 
                    child: Text(
                      "Resend OTP",
                      style: TextStyle(
                        fontFamily: "Figtree",
                        color: Color(0xFFFF002A),
                        fontWeight: FontWeight(400),
                        fontSize: 14
                      ),
                    ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context , 
                        "/event-details",
                        arguments: event
                      );
                    },
                    icon: Icon(Icons.skip_next),
                  )
                  ],
                ),
                
              ],
            ),
          ),
        ),
      );

  }

}