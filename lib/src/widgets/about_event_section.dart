import 'package:flutter/material.dart';
import '../../models/event.dart';
import '../../models/event.dart';

class AboutEventSection extends StatefulWidget{

  final Event event;

  const AboutEventSection({
    super.key,
    required this.event
  });

  @override
  State<AboutEventSection> createState()=> AboutEventSectionState();

}

class AboutEventSectionState extends State<AboutEventSection>{

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
              "Npthing",
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