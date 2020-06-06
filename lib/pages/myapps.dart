import 'dart:html';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'dart:js' as js;

import 'package:flutter/rendering.dart';

class LargeApps extends StatefulWidget {
  @override
  _LargeAppsState createState() => _LargeAppsState();
}

class _LargeAppsState extends State<LargeApps> {
  @override
  Widget build(BuildContext context) {
    initState() {
      super.initState();
    }

    return SizedBox(
      height: 600,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
//          Positioned(
//            right: MediaQuery.of(context).size.width/2,
//            bottom: -100,
//            child: Image.network(
//              "assets/mobile-cont.png",
//            ),
//          ),
          FractionallySizedBox(
              alignment: Alignment.centerRight,
              widthFactor: .55,
              child: Padding(
                padding: EdgeInsets.all(100),
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 400.0,
                    autoPlay: true,
                    enlargeCenterPage: true,
                  ),
                  items: [1, 2, 3, 4].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Card(
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              Image.network("https://lh3.googleusercontent.com/XTn8szgzKy-ndAp4IqycotR9VLvjkmqrHFtP446Y7Lty-Tus29sM-QWH_NH8c04BvLY=w2560-h1292-rw",height: 300,),

                            ],
                          ),
                        );
                      },
                    );
                  }).toList(),
//                  ),

                  //Search()
                ),
              )
//            Image.network(
//              "assets/mobile-cont.png",
//            ),
              ),
          FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: .45,
            child: Container(
                padding: EdgeInsets.only(left: 48),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("My apps",
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.normal,
                              color: Colors.black87)),
                      SizedBox(
                        height: 30,
                      ),
                      Wrap(
                        children: [
                          MenuCard(
                            title: "Drzewostan",
                            html: "assets/myapp/unnamed.webp",
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          MenuCard(
                            title: "Spojrzyj -Soczewki kontaktowe",
                            html: "assets/myapp/unnamed1.webp",
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          MenuCard(
                            title: "Smoguś",
                            html: "assets/myapp/unnamed2.webp",
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          MenuCard(
                            title: "Witcher \"Toss a coin to your Witcher \"",
                            html: "assets/myapp/unnamed3.webp",
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          MenuCard(
                            title: "Zaznacz to",
                            html: "assets/myapp/unnamed4.webp",
                          ),

                          //  Image.network("assets/myapp/unnamed.webp"),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text("Commercial apps",
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.normal,
                              color: Colors.black87)),
                      SizedBox(
                        height: 30,
                      ),
                      Wrap(
                        children: [
                          MenuCard(
                            title: "viewConnect 2",
                            html: "assets/myapp/comer3.webp",
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          MenuCard(
                            title: "viewAnalytics",
                            html: "assets/myapp/comer2.webp",
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          MenuCard(
                            title: "Rachunek Sumienia",
                            html: "assets/myapp/comer1.webp",
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          MenuCard(
                            title: "Alleluja",
                            html: "assets/myapp/comer4.webp",
                          ),
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                    ])),
          )
        ],
      ),
    );
  }
}

class SmallApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            FractionallySizedBox(
              alignment: Alignment.center,
              widthFactor: 1.0,
              child: Padding(
                padding: EdgeInsets.only(left: 48),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("My apps",
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.normal,
                            color: Colors.black87)),
                    SizedBox(
                      height: 30,
                    ),
                    Wrap(
                      runSpacing: 15,
                      alignment: WrapAlignment.center,
                      spacing: 10,
                      crossAxisAlignment: WrapCrossAlignment.start,
                      children: [
                        MenuCard(
                          title: "Drzewostan",
                          html: "assets/myapp/unnamed.webp",
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        MenuCard(
                          title: "Spojrzyj -Soczewki kontaktowe",
                          html: "assets/myapp/unnamed1.webp",
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        MenuCard(
                          title: "Smoguś",
                          html: "assets/myapp/unnamed2.webp",
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        MenuCard(
                          title: "Witcher \"Toss a coin to your Witcher \"",
                          html: "assets/myapp/unnamed3.webp",
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        MenuCard(
                          title: "Zaznacz to",
                          html: "assets/myapp/unnamed4.webp",
                        ),

                        //  Image.network("assets/myapp/unnamed.webp"),
//                  CarouselSlider(
//                    options: CarouselOptions(height: 400.0, autoPlay: true,
//
//                      enlargeCenterPage: true,),
//                    items: [1, 2, 3, 4].map((i) {
//                      return Builder(
//                        builder: (BuildContext context) {
//                          return Card(
//
//                            child: Column(
//                              crossAxisAlignment: CrossAxisAlignment.start,
//                                mainAxisSize: MainAxisSize.min,
//                                children: <Widget>[
//                                  Image.network("assets/myapp/myapp$i.png" ,height: 300,),
//                                  ButtonBar(
//                                    children: <Widget>[
//                                      FlatButton(
//                                        child: const Text('BUY TICKETS'),
//                                        onPressed: () {
//                                          /* ... */
//                                        },
//                                      ),
//                                      FlatButton(
//                                        child: const Text('LISTEN'),
//                                        onPressed: () {
//                                          /* ... */
//                                        },
//                                      ),
//                                    ],
//                                  ),
//                                ]),
//                          );
//                        },
//                      );
//                    }).toList(),
//                  ),

                        //Search()
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text("Commercial apps",
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.normal,
                            color: Colors.black87)),
                    SizedBox(
                      height: 30,
                    ),
                    Wrap(
                      runSpacing: 10,
                      alignment: WrapAlignment.spaceBetween,
                      spacing: 10,
                      crossAxisAlignment: WrapCrossAlignment.start,
                      children: [
                        MenuCard(
                          title: "viewConnect 2",
                          html: "assets/myapp/comer3.webp",
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        MenuCard(
                          title: "viewAnalytics",
                          html: "assets/myapp/comer2.webp",
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        MenuCard(
                          title: "Rachunek Sumienia",
                          html: "assets/myapp/comer1.webp",
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        MenuCard(
                          title: "Alleluja",
                          html: "assets/myapp/comer4.webp",
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
//                    CarouselSlider(
//                      options: CarouselOptions(
//                        height: 400.0,
//                        autoPlay: true,
//                        enlargeCenterPage: true,
//                      ),
//                      items: [1, 2, 3, 4, 5].map((i) {
//                        return Builder(
//                          builder: (BuildContext context) {
//                            return Card(
//                              child: Column(
//                                  mainAxisSize: MainAxisSize.min,
//                                  children: <Widget>[
//                                    const ListTile(
//                                      leading: Icon(Icons.album),
//                                      title: Text('The Enchanted Nightingale'),
//                                      subtitle: Text(
//                                          'Music by Julie Gable. Lyrics by Sidney Stein.'),
//                                    ),
//                                    ButtonBar(
//                                      children: <Widget>[
//                                        FlatButton(
//                                          child: const Text('BUY TICKETS'),
//                                          onPressed: () {
//                                            /* ... */
//                                          },
//                                        ),
//                                        FlatButton(
//                                          child: const Text('LISTEN'),
//                                          onPressed: () {
//                                            /* ... */
//                                          },
//                                        ),
//                                      ],
//                                    ),
//                                  ]),
//                            );
//                          },
//                        );
//                      }).toList(),
//                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Image.network("assets/mobile-cont.png", scale: .65),
                    //Search()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

//class MenuCard extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Card(child: ,);
//  }
//}

class MenuCard extends StatelessWidget {
  final String html;
  final String title;

  const MenuCard({
    Key key,
    this.html,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width > 1510 ||
              MediaQuery.of(context).size.width < 760)
          ? 110
          : 80,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(1, 1),
            blurRadius: 4,
            color: Colors.black12,
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          // Image.asset(image, height: 40),
          Image.network(
            html,
            height: 80,
          ),
          (MediaQuery.of(context).size.width > 1510 ||
                  MediaQuery.of(context).size.width < 760)
              ? Container(
                  height: 80,
                  alignment: Alignment.center,
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Montserrat-Regular",
                        color: Colors.black87),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
