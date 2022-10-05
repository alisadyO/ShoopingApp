

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:online_shopping/widgets/button.dart';
import './text.dart';
import 'package:lottie/lottie.dart';


// la main page bakar hate
class ItemBox extends StatelessWidget {
  int Index1 = 0;

  ItemBox({required this.Index1});

// rsm watch
  List Image0 = [
    'https://i.pinimg.com/564x/81/29/be/8129be662bb95585cf98e9c239e6ad73.jpg',
    'https://i.pinimg.com/564x/f0/8d/d4/f08dd4ec54e7cd625d21aa376436c0a6.jpg',
  ];

  // rsme jlkakan
  List Image1 = [
    'https://i.pinimg.com/564x/60/6b/54/606b54355c972ad80d36fe86b188ec6e.jpg',
    'https://i.pinimg.com/564x/92/0e/dd/920eddeaf36560eda4985ca70da14a27.jpg',
  ];
  //rsme shoe
  List Image2 = [
    'https://i.pinimg.com/564x/3e/48/b0/3e48b0d204cb213634e642521eacb9b1.jpg',
    'https://i.pinimg.com/564x/14/24/cd/1424cda47246734b3af7ab5c3fc6b44d.jpg',
  ];

  // rsme perfum
  List Image3 = [
    'https://i.pinimg.com/564x/7a/b8/cb/7ab8cb46df0fdfa3ed078ed0e3499ca0.jpg',
    'https://i.pinimg.com/564x/e6/02/7c/e6027cc852cb16e0ad668e5bb97150ce.jpg',
  ];







/*

  lera algorthim lo danaya  ama 2 indexman haya inedex page view ka Index1 wa index list
  wa ternary operator bakar henaya
  agar Index1 yaksan bw ba page 0 awa la naw list Image 0 2 rsm haya wa list index 0,1 haya
  baw sheway 2 rsme jya peshan dada la 2 grid view jyawaz


  */





  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        children: List.generate(2, (index) {
          return Card(
            child: Column(
              children: [
                Expanded(
                    child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    Index1 == 0
                        ? Image0[index]
                        : Index1 == 1
                            ? Image1[index]
                            : Index1 == 2
                                ? Image2[index]
                                : Image3[index],
                    fit: BoxFit.cover,
                  ),
                )),

                SmallText(text: 'item'),

                SmallText(text: '\$0')
              ],
            ),
          );
        }));
  }
}





class SeeAllItemBox0 extends StatelessWidget {

/*  int WatchIndex;
  int BagIndex;
  int BandIndex;

  SeeAllItemBox0({required this.BagIndex,required this.BandIndex,required this.WatchIndex});

  */



  @override
  Widget build(BuildContext context) {
    return Card(

elevation: 0,
      color: Color(0xFFffffff),
      child: Container(
decoration: BoxDecoration(
  
  color: Color(0xFFa7a7a7),
  borderRadius: BorderRadius.circular(25)
  

  
  
  
  
),
child: Column(
  
  children: [
    SizedBox(height: 30,)
    ,Expanded(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Image.network('https://i.pinimg.com/564x/89/5f/2a/895f2af433bf036dc5893a17b1fce0c1.jpg'),


      ),
    )

    ,LargeText(text: 'Ali',size: 35,)

    ,Row(
      mainAxisAlignment: MainAxisAlignment.center,


      children: [
        
        SmallText(text: '\$0',size: 35,color: Color(0xFF000000),),

     SizedBox(width: 30,)
        
        ,Container(
          
height: 70,
width: 240,
          
          
margin: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
border: Border.all(color: Color(0xFF000000),style: BorderStyle.solid,width: 4),
            borderRadius: BorderRadius.circular(40),



          ),



          child: TextButton(



              onPressed: null, child: Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [

              SmallText(text: 'Add to Cart',size: 23,color: Color(0xFF000000),),




Container(


  child:   Lottie.network('https://assets10.lottiefiles.com/packages/lf20_6RtULrpk2z.json',
      fit: BoxFit.cover

  ),



)








            ],





          ),
            




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


































