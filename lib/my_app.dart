import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "App Hoc Tap",
        home: Scaffold(
          //appBar: AppBar(),
          body: Container(
            child: Column(
              children: [
                Container(
                  width: 600,
                  height: 50,
                  color: Colors.lightBlue,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(),
                      ),
                      Image(image: AssetImage('my_icons/icon_apphoctap.png')),
                      Expanded(
                        flex: 1,
                        child: Container(),
                      ),
                      Text('APP HOC TAP'),
                      Expanded(
                        flex: 2,
                        child: Container(),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 600,
                  height: 180,
                  color: Colors.greenAccent,
                  child: Row(
                    children: [
                      Image(image: AssetImage('my_icons/flashcards_icon.png')),
                      Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(),
                          ),
                          Text('FLASH CARDS'),
                          Expanded(
                            flex: 1,
                            child: Container(),
                          ),
                          Text('Important key-words'),
                          Expanded(
                            flex: 2,
                            child: Container(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 600,
                  height: 275,
                  color: Colors.white,
                  child: CarouselDemo(),
                ),
                Container(
                    width: 600,
                    height: 180,
                    color: Colors.grey,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(),
                        ),
                        Text('EXAMS'),
                        Expanded(
                          flex: 2,
                          child: Container(),
                        ),
                        Column(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(),
                            ),
                            Container(
                                child: Row(
                                  children: [
                                    Image(image: AssetImage('my_icons/note_icon.png'),
                                        width: 20,
                                        height: 20,
                                        fit:BoxFit.fill
                                    ),
                                    Text('SYLLABUS EXAMS'),
                                  ],
                                )
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(),
                            ),
                            Container(
                                child: Row(
                                  children: [
                                    Image(image: AssetImage('my_icons/note_icon.png'),
                                        width: 20,
                                        height: 20,
                                        fit:BoxFit.fill
                                    ),
                                    Text('FINAL EXAMS'),
                                  ],
                                )
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(),
                            ),
                          ],
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(),
                        ),
                      ],
                    )
                ),
                Container(
                  width: 600,
                  height: 50,
                  color: Colors.lightBlue,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(),
                      ),
                      Image(image: AssetImage('my_icons/home_icon.png'),
                          width: 40,
                          height: 40,
                          fit:BoxFit.fill
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(),
                      ),
                      Image(image: AssetImage('my_icons/user_icon.png'),
                          width: 40,
                          height: 40,
                          fit:BoxFit.fill
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(),
                      ),
                      Image(image: AssetImage('my_icons/settings_icon.png'),
                          width: 40,
                          height: 40,
                          fit:BoxFit.fill
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }

  Widget CarouselDemo(){
    return CarouselSlider(
      options: CarouselOptions(height: 220.0),
      items: [1,2,3,4,5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                    color: Colors.deepPurple
                ),
                child: Text('text $i', style: TextStyle(fontSize: 16.0),)
            );
          },
        );
      }).toList(),
    );
  }
}



