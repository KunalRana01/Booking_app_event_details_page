import 'package:flutter/material.dart';
import 'event_stat_item.dart';

class EventStatsSection extends StatelessWidget {
  
  const EventStatsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      color: const Color.fromARGB(255, 238, 228, 228),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, 
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            EventStatItem(
              imgPath: "lib/src/images/eventStatItemStarImg.png",
              itemName: "Likes",
              count: 1500,
            ),
            EventStatItem(
              imgPath: "lib/src/images/eventStatItemShareImg.png",
              itemName: "Share",
              count: 50,
            ),
            EventStatItem(
              imgPath: "lib/src/images/eventStatItemViewsImg.png",
              itemName: "Views",
              count: 50,
            ),
          

        ],
      ),
      ),
    );
  }
}
