import 'package:flutter/material.dart';
import '../widgets/event_image_section.dart';
import '../widgets/event_stats_section.dart';
import '../widgets/event_details_section.dart';
import '../widgets/promotion_section.dart';
import '../widgets/about_event_section.dart';
import '../../models/event.dart';

class EventDetailsPage extends StatelessWidget{

  final Event event;

  const EventDetailsPage({
    super.key,
    required this.event
  });

  @override
  Widget build(BuildContext context){


    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0XFFFF002A),
          leading: IconButton(
            onPressed: (){Navigator.pop(context);},
          
            icon:Image.asset(
              "lib/src/images/backButton.png"
            )
            ),
            centerTitle: true,
            title: Image.asset(
              "lib/src/images/logo.png"
            ),
            actions: [
              IconButton(
                onPressed: (){print("profile menu button is tapped  !");}, 
                icon: Image.asset(
                  "lib/src/images/profileButton.png"
                )
              ),
              

            ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                EventImageSection(
                  imgPath: event.posterUrl,
                ),
                EventStatsSection(),
                EventDetailsSection(
                  eventTitle: event.title,
                  eventType: event.type,
                  eventDateTime: event.dateTime,
                  eventLocation: event.location,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 10,
                  child: ColoredBox(color: const Color.fromARGB(255, 238, 228, 228),
                ),
                ),
                PromotionSection(),
                SizedBox(
                  width: double.infinity,
                  height: 10,
                  child: ColoredBox(color: const Color.fromARGB(255, 238, 228, 228)),
                ),
                AboutEventSection(event: event,),
                SizedBox(
                width: double.infinity,
                height: 10,
                child: ColoredBox(
                  color: const Color.fromARGB(255, 238, 228, 228),
                ),
              ),

              ],
            ),
          ),
        ),
      );



  }






}