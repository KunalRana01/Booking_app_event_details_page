import 'package:flutter/material.dart';

class AboutEventSection extends StatefulWidget{

  const AboutEventSection({
    super.key
  });

  @override
  State<AboutEventSection> createState()=> AboutEventSectionState();

}

class AboutEventSectionState extends State<AboutEventSection>{

  final String description = "Get ready for an unforgettable evening with Armaan Malik Live in Chennai! Armaan Malik is known for his soulful voice and chart-topping hits, and he is set to captivate fans with a sensational performance. Whether you love romantic ballads or energetic pop tunes, this live concert promises a musical journey.The venue offers excellent seating arrangements, premium sound systems, food stalls, parking facilities, and security. Doors open one hour before the event begins. Please carry a valid ID proof along with your booking confirmation. Children above the age of 15 require a separate ticket.";

  bool isExpanded = false;

  @override
  Widget build(BuildContext context){

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 25),
            Text(
              "About Event",
              style: TextStyle(
                fontFamily: "Figtree",
                fontWeight: FontWeight(600),
                fontSize: 16,
              ),
            ),
            SizedBox(height: 15),
            Text(
              description,
              maxLines: isExpanded ? null : 2,
              overflow: isExpanded?TextOverflow.visible:TextOverflow.ellipsis,
              style: TextStyle(
                fontFamily: "Figtree",
                fontWeight: FontWeight(400),
                fontSize: 14,
              ),
            ),
            TextButton(
              onPressed: (){
                setState(() {
                  isExpanded = !isExpanded;
                });
                

              }, 
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                minimumSize: Size.zero,
                
              ),
              child: Text( 

                isExpanded ? "Read Less" : "Read More",
             
                style: TextStyle(
                  fontFamily: "Figtree",
                  fontWeight: FontWeight(400),
                  fontSize: 14,
                  color: Color(0XFFFF002A)
                ),
                ),
            ),
          ],
        ),
      )
    );

  }


}