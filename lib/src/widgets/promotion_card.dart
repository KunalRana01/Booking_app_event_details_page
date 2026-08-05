import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/rendering.dart';

class PromotionCard extends StatelessWidget{
  
  final String promotionCode;
  final String promotionText1;
  final String promotionText2;


  const PromotionCard({
    super.key,
    required this.promotionCode,
    required this.promotionText1,
    required this.promotionText2
  });

  @override
  Widget build(BuildContext context){

    return Column(
      children: [
        DottedBorder(
      options: RoundedRectDottedBorderOptions(
        color: Colors.red,
        strokeWidth: 1.5,
        dashPattern: [5,4],
        radius: const Radius.circular(8),
        padding:const EdgeInsets.all(0),
      ),
      
    child: Column(
      children: [
        Container(
            width: double.infinity,
            height: 120,
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Color(0XFFFF405F),
                        ),
                        width: 107,
                        height: 37,
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            promotionCode,
                            style: TextStyle(
                              fontFamily: "Figtree",
                              fontWeight: FontWeight(600),
                              fontSize: 14,
                              color: Color(0XFFFFFFFF),
                            ),
                          ),
                        ),
                      ),

                      InkWell(
                        onTap: () {
                          print("Hi");
                        },
                        child: Image.asset(
                          "lib/src/images/promotionCardCopyIcon.png",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            promotionText1,
                            style: TextStyle(
                              fontFamily: "Figtree",
                              fontWeight: FontWeight(400),
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 3),
                      Text(
                        promotionText2,
                        style: TextStyle(
                          fontFamily: "Figtree",
                          fontWeight: FontWeight(400),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
      
      ],
    ) 
    ),
    SizedBox(height: 15)
    ]); 



  }


}