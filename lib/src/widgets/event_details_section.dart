import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EventDetailsSection extends StatelessWidget{

  final String eventTitle;
  final String eventType;
  final String eventDateTime;
  final String eventLocation;


  const EventDetailsSection({
    super.key,
    required this.eventTitle,
    required this.eventType,
    required this.eventDateTime,
    required this.eventLocation
  });

  @override
  Widget build(BuildContext context){

    return Container(

      width: double.infinity,
      height: 180,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
          Text(
          eventTitle,
          style:TextStyle(
            fontFamily: "Figtree",
            fontWeight: FontWeight(600),
            fontSize: 18
          ), ),
          SizedBox(height: 5),
          Text(
              eventType,
              style: TextStyle(
                fontFamily: "Figtree",
                fontWeight: FontWeight(400),
                fontSize: 14,
              ),
            ),
          SizedBox(height: 20),
          Row(
            children: [
              Image.asset("lib/src/images/eventDetailsDateImg.png"),
              SizedBox(width:5),
              Text(
              eventDateTime,
              style: TextStyle(
                fontFamily: "Figtree",
                fontWeight: FontWeight(400),
                fontSize: 14,
                color: Color(0XFF666666)
              ),
              ),
              SizedBox(width: 5),
              InkWell(
                child: FaIcon(
                  FontAwesomeIcons.calendarPlus,
                  color : Colors.red,
                  size: 15,
                ),
                onTap: () {
                  print("Calendar button pressed....");
                },
              )
              // IconButton(onPressed: (){}, icon:Icon(Icons.add_a_photo))
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Image.asset(
                "lib/src/images/eventDetailsLocationIcon.png"
              ),
              SizedBox(width:5),
              Text(
                  eventLocation,
                  style: TextStyle(
                    fontFamily: "Figtree",
                    fontWeight: FontWeight(400),
                    fontSize: 14,
                    color: Color(0XFF666666),
                  ),
              ),
              SizedBox(width: 5),
              InkWell(
                onTap: () {
                  print("Hi");
                },
                child: Icon(
                    Icons.send,
                    color: Colors.pink,
                    size: 15,
                  ),
              )
            ],
          )
          ],
        ),
      ),
    );




  }


}