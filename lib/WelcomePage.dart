import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './widgets/./button.dart';
import './widgets/./text.dart';
import './MainPage.dart';
import './SeeAllPages.dart';
class Welcome_Page extends StatelessWidget {

  List image =['https://i.pinimg.com/564x/b1/c4/6b/b1c46b8badd697f84a2a9ccd10193340.jpg',
  'https://i.pinimg.com/564x/ef/c1/64/efc16405ada4bb4d909cc220b0f82be9.jpg'
  ];





  @override
  Widget build(BuildContext context) {
    return PageView.builder(

        itemCount: 2,
        itemBuilder: (context, index) {
          return Scaffold(
            body: Container(
              margin: EdgeInsets.only(top: 75),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if(index==0)...[
                            LargeText(
                              text: 'New collection',
                              size: 40,
                            ),
                            LargeText(
                              text: 'Autumn 2022',
                              size: 40,
                            ),
                          ]
                          else if (index == 1)...[
                            LargeText(
                              text: 'Anything You Want',
                              size: 28,
                            ),
                            LargeText(
                              text: 'You Can Get it Here',
                              size: 28,
                            ),

                          ]

                          ,SizedBox(height: 55,),


                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                  children: List.generate(2, (Index) {
                                return Container(
                                  margin: EdgeInsets.only(right: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: index == Index
                                        ? Color(0xFF000000)
                                        : Color(0xFFcccccc),
                                  ),
                                  height: 14,
                                  width: index == Index ? 55 : 14,
                                );
                              })),


                              if(index==0)...[
                                BUTTON(width: 75, TOrN: false,Push: (){

                                  Navigator.push(
                                  context,
                                  MaterialPageRoute(

                                      builder: (index)=>MainPage())


                                  );

                                },)
                              ]

                            ],
                          )
                        ],
                      )),
                  SizedBox(
                    height: 50,
                  ),

                Container(

                  child:
                  Tedx,





                )






                  Expanded(
                    child: Container(
                      width: double.maxFinite,
                      child: Image.network(
                        image[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
