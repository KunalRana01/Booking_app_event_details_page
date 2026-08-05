import 'package:flutter/material.dart';


class EventStatItem extends StatelessWidget{

  final String imgPath;
  final String itemName;
  final int count;

  const EventStatItem({
    super.key,
    required this.imgPath,
    required this.itemName,
    required this.count
    });


  @override
  Widget build(BuildContext context){

    return Row(
      children: [
        Image.asset(
          imgPath,
          width: 18,
          height: 16,
        ),
        SizedBox(width: 5),
        Text(
          '${count}+',
          style:TextStyle(
            fontFamily: "Figtree",
            fontWeight: FontWeight(600),
            fontSize: 14
          ), 

        ),
        SizedBox(width: 5),
        Text(
          '${itemName}',
          style: TextStyle(
            fontFamily: "Figtree",
            fontWeight: FontWeight(400),
            fontSize: 14,
            color: Color(0XFF666666)
          ), 
        )
      ],
    );



  }



}