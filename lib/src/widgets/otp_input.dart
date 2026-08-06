import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class OtpInput extends StatefulWidget{

  const OtpInput({super.key});
  @override
  State<OtpInput> createState()=> _OtpInputState();

}

class _OtpInputState extends State<OtpInput>{

  final TextEditingController _controller = TextEditingController();
  String _otpCode = "";

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  @override

  @override
Widget build(BuildContext context) {
  // Wrap the Stack inside a Center and Container to give it a controlled width
  return Center(
    child: Container(
      width: 260, // 👈 Adjust this width to increase or decrease the space between boxes
      margin: const EdgeInsets.symmetric(vertical: 16),
      child: Stack(
        children: [
          // Layer 1: Visual Boxes (The display layer)
          Row(
            // 👈 This spreads the boxes out evenly across the 260px container width
            mainAxisAlignment: MainAxisAlignment.spaceBetween, 
            children: List.generate(4, (index) {
              String character = "";
              if (_otpCode.length > index) {
                character = _otpCode[index];
              }

              return SizedBox(
                height: 60,
                width: 50,
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: _otpCode.length == index ? Colors.blue : Colors.grey,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    character,
                    style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
              );
            }),
          ),

          Positioned.fill(
            child: TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              style: const TextStyle(color: Colors.transparent),
              cursorColor: Colors.transparent,
              inputFormatters: [
                LengthLimitingTextInputFormatter(4),
                FilteringTextInputFormatter.digitsOnly,
              ],
              decoration: const InputDecoration(
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                counterText: '',
              ),
              onChanged: (value) {
                setState(() {
                  _otpCode = value;
                });
              },
            ),
          ),
        ],
      ),
    ),
  );
}




}