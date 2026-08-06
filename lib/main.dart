import 'package:_08_booking_app_event_details_page/models/promotion.dart';
import 'package:_08_booking_app_event_details_page/src/pages/login.dart';
import 'package:_08_booking_app_event_details_page/src/pages/otp_page.dart';
import 'package:_08_booking_app_event_details_page/src/pages/event_details_page.dart';


import 'package:flutter/material.dart';
import 'models/event.dart';


Event armaanMalik = Event(
  posterUrl: "lib/src/images/eventImage.jpg",
  likeCount: 150,
  shareCount: 50,
  viewCount: 1000,
  title: 'Armaan Malik Live in Chennai',
  type: "asdfadskfjakjdfkajdfhkjadf",
  dateTime: "aksdkasjdfkasjfkajsdfjsdhfkhasdf",
  location: "kjasdflkjasldfjlasjdflkasjdflkjasdfljksladfjlaskdfj",
  promotions: [Promotion(code: "Hi", description: "Hoisdfsdf")],
  description: "random description....",
);

void main(){

  runApp(
    MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/login",
    routes: {
      "/login" : (context)=>Login(event: armaanMalik),
      "/otp" : (context)=>OtpPage(event:  armaanMalik),
      "/event-details" : (context)=>EventDetailsPage(event:  armaanMalik),
    },
     
    )


  );


}