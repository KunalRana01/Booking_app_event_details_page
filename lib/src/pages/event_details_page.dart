import 'package:flutter/material.dart';
import '../widgets/event_image_section.dart';
import '../widgets/event_stats_section.dart';
import '../widgets/event_details_section.dart';
import '../widgets/promotion_section.dart';
import '../widgets/about_event_section.dart';
import 'login.dart';

class EventDetailsPage extends StatelessWidget{

  const EventDetailsPage({super.key});

  @override
  Widget build(BuildContext context){


    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0XFFFF002A),
          leading: IconButton(
            onPressed: (){Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=>Login()),
            );}, 
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
                  imgPath: "lib/src/images/eventImage.jpg",
                ),
                EventStatsSection(),
                EventDetailsSection(
                  eventTitle: "Armaan Malik Live in Chennai - 2024",
                  eventType: "Concert | Hindi | 2hr 30mins | 15 Years + | 500+ Views",
                  eventDateTime: "06:00 PM Sunday, 22nd December 2024",
                  eventLocation: "YMCA , Royapettah : Chennai 24 Westcott Road...",
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
                AboutEventSection(),
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