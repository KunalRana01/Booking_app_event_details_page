import 'package:flutter/material.dart';

class VerfifyButton extends StatelessWidget {
  const VerfifyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 25),
      child: FilledButton(
        style: FilledButton.styleFrom(
          backgroundColor: Color(0xFFFF405F),
          fixedSize: const Size(300, 60),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4))
          )
        ),
        onPressed: () => print("FilledButton Pressed"),

        child: Text(
          "Verify",
          style: TextStyle(
            fontFamily: "Figtree",
            fontWeight: FontWeight(600),
            fontSize: 16
          ),
          ),
      ),
    ); 
  }
}
