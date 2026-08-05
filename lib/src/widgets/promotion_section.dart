import 'package:flutter/material.dart';
import '../widgets/promotion_card.dart';

class PromotionSection extends StatelessWidget{

  const PromotionSection({
    super.key
  });

  @override
  Widget build(BuildContext context){

    return Container(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 25),
            Text(
              "Pomotional Offers",
              style: TextStyle(
                fontFamily: "Figtree",
                fontWeight: FontWeight(600),
                fontSize: 16,
              ),
              
            ),
            SizedBox(height:15),
            PromotionCard(
              promotionCode: "PERFECT 10",
              promotionText1: "Dont",
              promotionText2: "Limited period offer.",
            ),
            PromotionCard(
              promotionCode: "PERFECT 50",
              promotionText1: "lakdsjflkasjdflkajsdflkasjdf",
              promotionText2: "Limted period offer.",
            ),
            
           
           
         
          ],
      ), 

      )
    );



  }



}