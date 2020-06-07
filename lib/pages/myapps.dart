import 'dart:html';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'dart:js' as js;

import 'package:flutter/rendering.dart';
import 'package:flutterapp/Models/DesciptionApp.dart';

class LargeApps extends StatefulWidget {
  @override
  _LargeAppsState createState() => _LargeAppsState();
}

class _LargeAppsState extends State<LargeApps> {
  @override
  Widget build(BuildContext context) {
    List<ModelDescription> myAppsLis = [
      ModelDescription(
          "Drzewostan",
          "  Application for recording the number of trees by class and diameter.\n" +
              "To then transfer data to other devices.\n" +
              "* Counts the number of trees divided into classes\n" +
              "* Sends the report to another device\n" +
              "* Friendly visual appearance"),
      ModelDescription("Spojrzyj",
          "  An application that facilitates the management of your lens replacement. Choose the type of lens the date of first establishment and the application will indicate when to replace it."),
      ModelDescription("Smoguś",
          "  The application was created to make the recipient aware of what air he is breathing. Measurements taken from the main official CIEP stations."),
      ModelDescription("Witcher",
          " Compare songs . And vote for your favourite \"Toss a coin to your Witcher \"  . SoundBoard"),
      ModelDescription("Zaznacz to",
          "  An application that will help us remember places important to us may be a place on vacation, friends' addresses and the marking of these places on the map. And we can share this data with friends"),
    ];

    initState() {
      super.initState();
    }

    return SizedBox(
      height: 700,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[

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
                  items: [1, 2, 3, 4, 5].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Card(
                          elevation: 4,
                          child: Container(
//                            decoration: BoxDecoration(
//                              gradient: LinearGradient(
//                                  colors: [Color(0xFF3a1c71 ), Color(0xFFd76d77), Color(0xFFffaf7b)],
//
//                                  begin: Alignment.bottomRight,
//                                  end: Alignment.topLeft),
//                              boxShadow: [
//                                BoxShadow(
//                                    color: Color(0xFF6578ea).withOpacity(.3),
//                                    offset: Offset(0, 8),
//                                    blurRadius: 8)
//                              ],
//                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                (MediaQuery.of(context).size.width > 1510 ||
                                        MediaQuery.of(context).size.width < 760)
                                    ? Image.network(
                                        "assets/myapp/rect$i.png",
                                        height: 350,
                                      )
                                    : Container(),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.all(20),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Image.network(
                                          "assets/myapp/unnamed${i - 1}.webp",
                                          height: 80,
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                            "${myAppsLis.elementAt(i - 1).title}",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontFamily: 'Montserrat-Bold',
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black54)),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Flexible(
                                          child: Text(
                                              "${myAppsLis.elementAt(i - 1).desc}",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily:
                                                      'Montserrat-Regular',
                                                  fontSize: 14,
                                                  color: Colors.black54)),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
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
                        runSpacing: 10,

                        spacing: 10,
                        crossAxisAlignment: WrapCrossAlignment.start,

                        children: [
                          InkWell(
                            onTap: () {
                              js.context.callMethod("open", [
                                "https://play.google.com/store/apps/details?id=com.anioncode.drzewostan"
                              ]);
//                            _launchURL("https://github.com/Lukieoo");
                            },
                            child: MenuCard(
                              title: "Drzewostan",
                              html: "assets/myapp/unnamed0.webp",
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          InkWell(
                            onTap: () {
                              js.context.callMethod(
                                  "open", ["https://play.google.com/store/apps/details?id=com.anioncode.spojrzyj"]);
//                            _launchURL("https://github.com/Lukieoo");
                            },
                            child: MenuCard(
                              title: "Spojrzyj -Soczewki kontaktowe",
                              html: "assets/myapp/unnamed1.webp",
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          InkWell(
                            onTap: () {
                              js.context.callMethod(
                                  "open", ["https://play.google.com/store/apps/details?id=com.anioncode.smogu"]);
//                            _launchURL("https://github.com/Lukieoo");
                            },
                            child: MenuCard(
                              title: "Smoguś",
                              html: "assets/myapp/unnamed2.webp",
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          InkWell(
                            onTap: () {
                              js.context.callMethod(
                                  "open", ["https://play.google.com/store/apps/details?id=com.anioncode.witcher"]);
//                            _launchURL("https://github.com/Lukieoo");
                            },
                            child: MenuCard(
                              title: "Witcher \"Toss a coin to your Witcher \"",
                              html: "assets/myapp/unnamed3.webp",
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          InkWell(
                            onTap: () {
                              js.context.callMethod(
                                  "open", ["https://play.google.com/store/apps/details?id=com.anioncode.memory"]);
//                            _launchURL("https://github.com/Lukieoo");
                            },
                            child: MenuCard(
                              title: "Zaznacz to",
                              html: "assets/myapp/unnamed4.webp",
                            ),
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
                          InkWell(
                            onTap: () {
                              js.context.callMethod(
                                  "open", ["https://play.google.com/store/apps/details?id=com.lasoft.viewconnect"]);
//                            _launchURL("https://github.com/Lukieoo");
                            },
                            child: MenuCard(
                              title: "viewConnect 2",
                              html: "assets/myapp/comer3.webp",
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          InkWell(
                            onTap: () {
                              js.context.callMethod(
                                  "open", ["https://play.google.com/store/apps/details?id=com.lasoft.viewanalytics"]);
//                            _launchURL("https://github.com/Lukieoo");
                            },
                            child: MenuCard(
                              title: "viewAnalytics",
                              html: "assets/myapp/comer2.webp",
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          InkWell(
                            onTap: () {
                              js.context.callMethod(
                                  "open", ["https://play.google.com/store/apps/details?id=com.lasoft.Rachunek_Sumienia"]);
//                            _launchURL("https://github.com/Lukieoo");
                            },
                            child: MenuCard(
                              title: "Rachunek Sumienia",
                              html: "assets/myapp/comer1.webp",
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          InkWell(
                            onTap: () {
                              js.context.callMethod(
                                  "open", ["https://play.google.com/store/apps/details?id=pl.lasoft.Alleluja"]);
//                            _launchURL("https://github.com/Lukieoo");
                            },
                            child: MenuCard(
                              title: "Alleluja",
                              html: "assets/myapp/comer4.webp",
                            ),
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
    List<ModelDescription> myAppsLis = [
      ModelDescription(
          "Drzewostan",
          "  Application for recording the number of trees by class and diameter.\n" +
              "To then transfer data to other devices.\n" +
              "* Counts the number of trees divided into classes\n" +
              "* Sends the report to another device\n" +
              "* Friendly visual appearance"),
      ModelDescription("Spojrzyj",
          "  An application that facilitates the management of your lens replacement. Choose the type of lens the date of first establishment and the application will indicate when to replace it."),
      ModelDescription("Smoguś",
          "  The application was created to make the recipient aware of what air he is breathing. Measurements taken from the main official CIEP stations."),
      ModelDescription("Witcher",
          " Compare songs and vote for your favourite \"Toss a coin to your Witcher \"."),
      ModelDescription("Zaznacz to",
          "  An application that will help us remember places important to us may be a place on vacation, friends' addresses and the marking of these places on the map. And we can share this data with friends"),
    ];

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(5),
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

                      spacing: 10,
                      crossAxisAlignment: WrapCrossAlignment.start,
                      children: [
                        MenuCard(
                          title: "Drzewostan",
                          html: "assets/myapp/unnamed0.webp",
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
                      height: 30,
                    ),
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
                              elevation: 4,
                              child: Container(
//                                decoration: BoxDecoration(
//                                  gradient: LinearGradient(
//                                      colors: [Color(0xFF3a1c71 ), Color(0xFFd76d77), Color(0xFFffaf7b)],
//
//                                      begin: Alignment.bottomRight,
//                                      end: Alignment.topLeft),
//                                  boxShadow: [
//                                    BoxShadow(
//                                        color: Color(0xFF6578ea).withOpacity(.3),
//                                        offset: Offset(0, 8),
//                                        blurRadius: 8)
//                                  ],
//                                ),
//                            decoration: BoxDecoration(
//                              gradient: LinearGradient(
//                                  colors: [
//                                    Color(0xFFC86DD7).withOpacity(0.7),
//                                    Color(0xFF3023AE).withOpacity(0.7)
//                                  ],
//                                  begin: Alignment.bottomRight,
//                                  end: Alignment.topLeft),
//                              boxShadow: [
//                                BoxShadow(
//                                    color: Color(0xFF6078ea).withOpacity(.3),
//                                    offset: Offset(0, 8),
//                                    blurRadius: 8)
//                              ],
//                            ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsets.all(20),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Image.network(
                                              "assets/myapp/unnamed${i - 1}.webp",
                                              height: 80,
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Text(
                                                "${myAppsLis.elementAt(i - 1).title}",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontFamily:
                                                        'Montserrat-Bold',
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black54)),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Flexible(
                                              child: Text(
                                                  "${myAppsLis.elementAt(i - 1).desc}",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily:
                                                          'Montserrat-Regular',
                                                      fontSize: 14,
                                                      color: Colors.black54)),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      }).toList(),
//                  ),

                      //Search()
                    ),
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
        borderRadius: BorderRadius.circular(0),
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
