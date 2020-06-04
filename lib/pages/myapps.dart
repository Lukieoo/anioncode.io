import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'dart:js' as js;

class LargeApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.centerRight,
            widthFactor: .6,
            child: Image.network("assets/myapps.png", scale: .65),
          ),
          FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: .65,
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
                ],
              ),
            ),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            FractionallySizedBox(
              alignment: Alignment.center,
              widthFactor: 1.0,
              child: Padding(
                padding: EdgeInsets.only(left: 48),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CarouselSlider(
                      options: CarouselOptions(
                        height: 400.0,
                        autoPlay: true,
                        enlargeCenterPage: true,
                      ),
                      items: [1, 2, 3, 4, 5].map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Card(
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    const ListTile(
                                      leading: Icon(Icons.album),
                                      title: Text('The Enchanted Nightingale'),
                                      subtitle: Text(
                                          'Music by Julie Gable. Lyrics by Sidney Stein.'),
                                    ),
                                    ButtonBar(
                                      children: <Widget>[
                                        FlatButton(
                                          child: const Text('BUY TICKETS'),
                                          onPressed: () {
                                            /* ... */
                                          },
                                        ),
                                        FlatButton(
                                          child: const Text('LISTEN'),
                                          onPressed: () {
                                            /* ... */
                                          },
                                        ),
                                      ],
                                    ),
                                  ]),
                            );
                          },
                        );
                      }).toList(),
                    ),
                    SizedBox(
                      height: 40,
                    ),
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
      width: (MediaQuery.of(context).size.width > 760) ? 110 : 80,
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
          Container(
            height: 80,
            alignment: Alignment.center,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "Montserrat-Regular",
                  color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }
}
