
import 'package:flutter/material.dart';
import '../../models/event.dart';

class Login extends StatelessWidget {
  final Event event;
  const Login({
    super.key,
    required this.event
    });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Logo Section
                  Padding(
                    padding: const EdgeInsets.only(top: 80.0, bottom: 40.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("lib/src/images/logo_1.png"),
                        const SizedBox(width: 10),
                        Column(
                          children: [Image.asset("lib/src/images/logo_2.png")],
                        ),
                      ],
                    ),
                  ),

                  // Login Title
                  const Text(
                    "Login",
                    style: TextStyle(
                      fontFamily: "Figtree",
                      fontWeight: FontWeight
                          .w600, 
                      fontSize: 22,
                    ),
                  ),

                  // Subtitle
                  const Padding(
                    padding: EdgeInsets.only(top: 12.0, bottom: 25.0),
                    child: Text(
                      "Enter email to access your account",
                      style: TextStyle(
                        fontFamily: "Figtree",
                        fontWeight: FontWeight
                            .w400, 
                        fontSize: 13,
                        color: Color(0xFFDADADA),
                      ),
                    ),
                  ),

                  // Email Input Field
                  SizedBox(
                    width: 362,
                    height: 49,
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFDADADA),
                            width: 1.0,
                          ),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 1.0,
                          ),
                        ),
                        border: const OutlineInputBorder(),
                        labelText: "Email", 
                        labelStyle: const TextStyle(color: Color(0xFFDADADA)),
                      ),
                    ),
                  ),

                  const SizedBox(height: 18),

                  // Continue Button
                  GestureDetector(
                    onTap: () {
                      print("Continue button tapped !");
                    },
                    child: Container(
                      width: 362,
                      height: 49,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFF405F),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Center(
                        child: Text(
                          "Continue",
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontFamily: "Figtree",
                            fontWeight: FontWeight
                                .w600, 
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 25),

                  Row(
                    children: [
                      
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(right: 16),
                          child: const Divider(
                            color: Color(0xFF666666),
                            thickness: 1,
                          ),
                        ),
                      ),
                      const Text(
                        'or login with',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: "Figtree",
                          fontWeight: FontWeight
                              .w400, 
                          color: Color(0xFF666666),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(left: 16),
                          child: const Divider(
                            color: Color(0xFF666666),
                            thickness: 1,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 25),

                  
                  SizedBox(
                    width:
                        362, 
                    height: 50,
                    child: OutlinedButton.icon(
                      onPressed: ()=>{print("Facebook button tapped..")},
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Color(0xFFE7E7E7)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                      ),
                      icon: Image.asset(
                        "lib/src/images/logo_fb.png",
                        height: 24,
                        errorBuilder: (context, error, stackTrace) =>
                            const Icon(
                              Icons.facebook,
                              color: Colors.blue,
                            ), // Fallback if image asset missing
                      ),
                      label: const Text(
                        "Sign in with Facebook",
                        style: TextStyle(
                          color: Colors.black87,
                          fontFamily: "Figtree",
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  IconButton(
                    onPressed: (){
                      Navigator.pushNamed(
                        context, 
                        "/otp",
                        arguments: event
                      );
                    },
                    icon: Icon(Icons.skip_next),
                  )
                ],
              ),
            ),
          ),
        ),
      );

  }
}
