import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:online_shopping/SeeAllPages.dart';
import './widgets/./text.dart';
import './widgets/./button.dart';
import './widgets/./itemBox.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MainPageState();
  }
}

class MainPageState extends State {
  int ButtonIndex = 0;

  int x = 0;

  void plus() {
    x += 1;

  }

  List NameTitle = [
    TextButton1(Namepart: 'Accessories', SubNum: 10),
    TextButton1(Namepart: 'clothes', SubNum: 4),
    TextButton1(Namepart: 'Shoes', SubNum: 6),
    TextButton1(Namepart: 'Perfumes', SubNum: 7),
  ];

  List SeeAll = [
    'See all accessories',
    'See all Clothes',
    'See all Shoes',
    'See all PerFumes'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        foregroundColor: Color(0xFF000000),
        toolbarHeight: 70,
        elevation: 1,
        backgroundColor: Color(0xFFffffff),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
              iconSize: 36,
              color: Color(0xFf000000),
            ),
            IconButton(
              onPressed: null,
              icon: Icon(Icons.search),
              iconSize: 36,
              disabledColor: Color(0xFf000000),
            ),
            IconButton(
              onPressed: null,
              icon: Icon(Icons.local_mall),
              iconSize: 36,
              disabledColor: Color(0xFf000000),
            ),
          ],
        ),
      ),

// aw single child daykata scrool hata over flw nabe

      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 30, left: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LargeText(
                text: 'Hi, Welcome!',
                size: 32,
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                child: SmallText(
                  text: 'New collection From Famous Brand in The Wolrd',
                ),
                height: 90,
                width: 240,
              ),

              SizedBox(
                height: 15,
              )

              //aw container lo rsme naw box
              ,
              Container(
                height: 180,
                width: 350,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color(0xFFa7a7a7),
                        width: 1,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Expanded(
                        child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        'https://i.pinimg.com/564x/0d/30/b4/0d30b44feb6847e74c02bb4a5990c1da.jpg',
                        fit: BoxFit.cover,
                      ),
                    )),
                    SizedBox(
                      width: 10,
                    ),
                    IconButton(
                      onPressed: null,
                      disabledColor: Color(0xFF000000),
                      icon: Icon(Icons.arrow_forward),
                      iconSize: 45,
                    )
                  ],
                ),
              ),

              SizedBox(
                height: 20,
              ),

              SizedBox(
                child: SmallText(
                  text: 'Slide For More \u25BC',
                ),
                height: 30,
                width: 240,
              ),

              // aw contenara lo collection
//contanare 3am
              Container(
                  width: 740,
                  height: 350,
                  child: PageView.builder(

                      onPageChanged: (int) {
                        setState(() {

                          ButtonIndex =int;

                        });


                        print(ButtonIndex);
                      },
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Awa List Nawakana
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

                            SizedBox(
                              height: 10,
                            )

                            // awa card
                            //Contanare rsmakan
                            ,
                            Container(
                              child: ItemBox(Index1: index,),
                              height: 215,
                              width: 400,
                            )

                            //AWash lo dot
                            ,
                            Container(
                              margin: EdgeInsets.only(left: 129),
                              width: 150,
                              child: Row(
                                children: List.generate(4, (Index) {
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
                            )
                          ],
                        );
                      })),
              //hat era lo collection

              //ertash button see more
              SizedBox(
                height: 15,
              ),
              BUTTON(
                width: 350,
                TOrN: true,
                Push: (){

                  Navigator.push(context,

                  MaterialPageRoute(builder:(context) => AccessoriesPage(),  )

                  );


                },
                text: SeeAll[ButtonIndex],
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
