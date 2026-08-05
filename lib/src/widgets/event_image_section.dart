import 'package:flutter/material.dart';

class EventImageSection extends StatelessWidget{

  final String imgPath;

  const EventImageSection({
    super.key,
    required this.imgPath,
  });

  @override
  Widget build(BuildContext context){

    return Container(
                width: double.infinity,
                height: 152,
                child:Image.asset(
                  imgPath,
                  fit: BoxFit.fill,
                )
    );

  }

}