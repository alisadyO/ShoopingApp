import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_shopping/widgets/itemBox.dart';
import './widgets/./text.dart';
import './widgets/./button.dart';

class AccessoriesPage extends StatelessWidget  {
  List NameTitle = [
    TextButton1(Namepart: 'Watch', SubNum: 4),
    TextButton1(Namepart: 'Bag', SubNum: 3),
    TextButton1(Namepart: 'Band', SubNum: 2),
  ];

  //law lsit  awa list xware dagore ba pey aw zhmaraya lo subnum daneren

  List itemIndex=[4,3,2];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 2,
        title: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
              iconSize: 36,
              color: Color(0xFFffffff),
            )
          ],
        ),
        toolbarHeight: 180,
        backgroundColor: Color(0xFFffffff),
        flexibleSpace: Image.network(
          'https://i.pinimg.com/564x/cf/9d/f3/cf9df3099f04a07377e6285397cb55ab.jpg',
          fit: BoxFit.cover,
        ),
      ),

      body: Container(
        margin: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
//title cont
              Container(
                  margin: EdgeInsets.only(left: 45, top: 20),
                  child: TextButton1(
                    Namepart: 'Accessories',
                    SubNum: 10,
                    SText: 30,
                    sub: 18,

                  )),

//xware title ba hamw dot rsme icon title la naw aw cont
              Container(
                  margin: EdgeInsets.only(top: 20),
                  width: 400,
                  height: 650,
                  child: PageView.builder(
                      itemCount: NameTitle.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            //List nawkana wache slide dakay
                            Row(
                              children: List.generate(1, (Index) {
                                return Container(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Color(
                                                0xFFa7a7a7,
                                              ),
                                              width: 5,
                                              style: BorderStyle.solid))),
                                  margin: EdgeInsets.only(right: 10),
                                  child: NameTitle[index],
                                );
                              }),
                            ),

SizedBox(height: 24,)

                            //aw cont lo dotakana
                            ,Container(
                              width: 150,
                              child: Row(
                                children: List.generate(3, (Index) {
                                  return Container(
                                    margin: EdgeInsets.only(right: 20),
                                    decoration: BoxDecoration(
                                        color: index == Index
                                            ? Color(0xFFa7a7a7)
                                            : Color(0xFFccccccc),
                                        borderRadius: BorderRadius.circular(8)),
                                    height: 15,
                                    width: 15,
                                  );
                                }),
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                              ),
                            ),










                            // Aw cont lo gridview ka card tedaya
                            Container(
                              width: 400,
                              height: 500,
                              child: GridView.count(
                                crossAxisCount: 1,
                                children: List.generate(itemIndex[index], (index) {
                                  return SeeAllItemBox0()



                                    ;
                                }),
                              ),
                              margin: EdgeInsets.all(15),
                            ),




                          ],
                        );
                      }))
            ],
          ),
        ),
      ),
    );
  }
}
