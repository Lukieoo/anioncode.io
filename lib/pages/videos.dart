import 'dart:html';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'dart:js' as js;

import 'package:flutter/rendering.dart';
import 'package:flutterapp/Models/DesciptionApp.dart';
import 'package:flutterapp/Models/YoutubeModel.dart';

class LargeVideos extends StatefulWidget {
  @override
  _LargeVideosState createState() => _LargeVideosState();
}

class _LargeVideosState extends State<LargeVideos> {
  @override
  Widget build(BuildContext context) {
    List<ModelYoutube> myAppsLis = [
      ModelYoutube(
          image:"https://i.ytimg.com/vi/2yEb9YOwZr8/hqdefault.jpg",
          title:"Flutter Swipe Card, Gwent Ui card example",
          href:"https://www.youtube.com/watch?v=2yEb9YOwZr8"),
      ModelYoutube(
          image:"https://i.ytimg.com/vi/KP4cHuQUCmk/maxresdefault.jpg",
          title:"Flutter SilverAppBar , SilverList , Ui example",
          href:"https://www.youtube.com/watch?v=KP4cHuQUCmk"),
      ModelYoutube(
          image:"https://i.ytimg.com/vi/U30FogW4eSY/maxresdefault.jpg",
          title:"Flutter , Simple Game Fight Simulator in Visual Studio Code",
          href:"https://www.youtube.com/watch?v=U30FogW4eSY"),

      ModelYoutube(
          image:"https://i.ytimg.com/vi/hRRpvHTg3zQ/maxresdefault.jpg",
          title:"Communicate between Fragments using ViewModel / Kotlin , Ui example",
          href:"https://www.youtube.com/watch?v=hRRpvHTg3zQ"),


      ModelYoutube(
          image:"https://i.ytimg.com/vi/VyzAM1om6iE/maxresdefault.jpg",
          title:"Drzewostan - Szacunki leśne",
          href:"https://www.youtube.com/watch?v=VyzAM1om6iE"),

      ModelYoutube(
          image:"https://i.ytimg.com/vi/3D22nh299XI/maxresdefault.jpg",
          title:"Smoguś , Stan jakości powietrza",
          href:"https://www.youtube.com/watch?v=3D22nh299XI"),

      ModelYoutube(
          image:"https://i.ytimg.com/vi/f2in4gG7LoY/maxresdefault.jpg",
          title:"Spojrzyj , aplikacja do soczewek kontaktowych",
          href:"https://www.youtube.com/watch?v=f2in4gG7LoY"),

      ModelYoutube(
          image:"https://i.ytimg.com/vi/5mqANuHohqI/maxresdefault.jpg",
          title:"Android Studio Gallery ViewModel ,Data Binding ,Rest Api , Retrofit2 example in Kotlin",
          href:"https://www.youtube.com/watch?v=5mqANuHohqI"),

      ModelYoutube(
          image:"https://i.ytimg.com/vi/CgXxfYS612E/maxresdefault.jpg",
          title:"Android Studio Global Chat ViewModel ,WebSocket example",
          href:"https://www.youtube.com/watch?v=CgXxfYS612E"),

      ModelYoutube(
          image:"https://i.ytimg.com/vi/cACHcjwv7Mk/maxresdefault.jpg",
          title:"Android Studio Grid Gallery  ViewModel ,Data Binding ,Rest Api , Retrofit2 example",
          href:"https://www.youtube.com/watch?v=cACHcjwv7Mk"),

      ModelYoutube(
          image:"https://i.ytimg.com/vi/JOUGOIySLGk/maxresdefault.jpg",
          title:"Android Studio  Footbal News ViewModel ,Live Data ,Rest Api , Okhttp example",
          href:"https://www.youtube.com/watch?v=JOUGOIySLGk"),

      ModelYoutube(
          image:"https://i.ytimg.com/vi/X9slxOEGilM/maxresdefault.jpg",
          title:"Android Studio-#Tip8 CSV Google spreadsheet /Example Source Code",
          href:"https://www.youtube.com/watch?v=X9slxOEGilM"),

      ModelYoutube(
          image:"https://i.ytimg.com/vi/RO20k85h7f0/maxresdefault.jpg",
          title:"Aplikacja pogodowa w Android Studio Część 2 - Rest Api OkHttp",
          href:"https://www.youtube.com/watch?v=RO20k85h7f0"),

      ModelYoutube(
          image:"https://upload.wikimedia.org/wikipedia/commons/thumb/7/75/YouTube_social_white_squircle_%282017%29.svg/1200px-YouTube_social_white_squircle_%282017%29.svg.png",
          title:"More on my Youtube",
          href:"https://www.youtube.com/channel/UCseP9k1DwSAqzZ-iyeAlTvg"),

    ];

    initState() {
      super.initState();
    }

    return SizedBox(
      height: 680,
      child: Padding(
        padding: const EdgeInsets.all(46.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("My latest videos",
                textAlign: TextAlign.left,
                style: TextStyle(

                    fontSize: 35,
                    fontWeight: FontWeight.normal,
                    color: Colors.black87)),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: SingleChildScrollView(
                  child: Wrap(
                    spacing: 10,
                    runSpacing: 10,
                children: [
                  InkWell(
                    onTap: () {
                      js.context.callMethod("open", [
                        myAppsLis.elementAt(0).href
                      ]);
                    },
                    child: MenuCard(
                      title: myAppsLis.elementAt(0).title,
                      html: myAppsLis.elementAt(0).image,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      js.context.callMethod("open", [
                        myAppsLis.elementAt(1).href
                      ]);
                    },
                    child: MenuCard(
                      title: myAppsLis.elementAt(1).title,
                      html: myAppsLis.elementAt(1).image,
                    ),
                  ),

                  InkWell(
                    onTap: () {
                      js.context.callMethod("open", [
                        myAppsLis.elementAt(2).href
                      ]);
                    },
                    child: MenuCard(
                      title: myAppsLis.elementAt(2).title,
                      html: myAppsLis.elementAt(2).image,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      js.context.callMethod("open", [
                        myAppsLis.elementAt(3).href
                      ]);
                    },
                    child: MenuCard(
                      title: myAppsLis.elementAt(3).title,
                      html: myAppsLis.elementAt(3).image,
                    ),
                  ),

                  InkWell(
                    onTap: () {
                      js.context.callMethod("open", [
                        myAppsLis.elementAt(4).href
                      ]);
                    },
                    child: MenuCard(
                      title: myAppsLis.elementAt(4).title,
                      html: myAppsLis.elementAt(4).image,
                    ),
                  ),

                  InkWell(
                    onTap: () {
                      js.context.callMethod("open", [
                        myAppsLis.elementAt(5).href
                      ]);
                    },
                    child: MenuCard(
                      title: myAppsLis.elementAt(5).title,
                      html: myAppsLis.elementAt(5).image,
                    ),
                  ),

                  InkWell(
                    onTap: () {
                      js.context.callMethod("open", [
                        myAppsLis.elementAt(6).href
                      ]);
                    },
                    child: MenuCard(
                      title: myAppsLis.elementAt(6).title,
                      html: myAppsLis.elementAt(6).image,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      js.context.callMethod("open", [
                        myAppsLis.elementAt(7).href
                      ]);
                    },
                    child: MenuCard(
                      title: myAppsLis.elementAt(7).title,
                      html: myAppsLis.elementAt(7).image,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      js.context.callMethod("open", [
                        myAppsLis.elementAt(8).href
                      ]);
                    },
                    child: MenuCard(
                      title: myAppsLis.elementAt(8).title,
                      html: myAppsLis.elementAt(8).image,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      js.context.callMethod("open", [
                        myAppsLis.elementAt(9).href
                      ]);
                    },
                    child: MenuCard(
                      title: myAppsLis.elementAt(9).title,
                      html: myAppsLis.elementAt(9).image,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      js.context.callMethod("open", [
                        myAppsLis.elementAt(10).href
                      ]);
                    },
                    child: MenuCard(
                      title: myAppsLis.elementAt(10).title,
                      html: myAppsLis.elementAt(10).image,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      js.context.callMethod("open", [
                        myAppsLis.elementAt(11).href
                      ]);
                    },
                    child: MenuCard(
                      title: myAppsLis.elementAt(11).title,
                      html: myAppsLis.elementAt(11).image,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      js.context.callMethod("open", [
                        myAppsLis.elementAt(12).href
                      ]);
                    },
                    child: MenuCard(
                      title: myAppsLis.elementAt(12).title,
                      html: myAppsLis.elementAt(12).image,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      js.context.callMethod("open", [
                        myAppsLis.elementAt(13).href
                      ]);
                    },
                    child: MenuCard(
                      title: myAppsLis.elementAt(13).title,
                      html: myAppsLis.elementAt(13).image,
                    ),
                  ),
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}

class SmallVideos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<ModelYoutube> myAppsLis = [
      ModelYoutube(
          image:"https://i.ytimg.com/vi/2yEb9YOwZr8/hqdefault.jpg",
          title:"Flutter Swipe Card, Gwent Ui card example",
          href:"https://www.youtube.com/watch?v=2yEb9YOwZr8"),
      ModelYoutube(
          image:"https://i.ytimg.com/vi/KP4cHuQUCmk/maxresdefault.jpg",
          title:"Flutter SilverAppBar , SilverList , Ui example",
          href:"https://www.youtube.com/watch?v=KP4cHuQUCmk"),
      ModelYoutube(
          image:"https://i.ytimg.com/vi/U30FogW4eSY/maxresdefault.jpg",
          title:"Flutter , Simple Game Fight Simulator in Visual Studio Code",
          href:"https://www.youtube.com/watch?v=U30FogW4eSY"),

      ModelYoutube(
          image:"https://i.ytimg.com/vi/hRRpvHTg3zQ/maxresdefault.jpg",
          title:"Communicate between Fragments using ViewModel / Kotlin , Ui example",
          href:"https://www.youtube.com/watch?v=hRRpvHTg3zQ"),


      ModelYoutube(
          image:"https://i.ytimg.com/vi/VyzAM1om6iE/maxresdefault.jpg",
          title:"Drzewostan - Szacunki leśne",
          href:"https://www.youtube.com/watch?v=VyzAM1om6iE"),

      ModelYoutube(
          image:"https://i.ytimg.com/vi/3D22nh299XI/maxresdefault.jpg",
          title:"Smoguś , Stan jakości powietrza",
          href:"https://www.youtube.com/watch?v=3D22nh299XI"),

      ModelYoutube(
          image:"https://i.ytimg.com/vi/f2in4gG7LoY/maxresdefault.jpg",
          title:"Spojrzyj , aplikacja do soczewek kontaktowych",
          href:"https://www.youtube.com/watch?v=f2in4gG7LoY"),

      ModelYoutube(
          image:"https://i.ytimg.com/vi/5mqANuHohqI/maxresdefault.jpg",
          title:"Android Studio Gallery ViewModel ,Data Binding ,Rest Api , Retrofit2 example in Kotlin",
          href:"https://www.youtube.com/watch?v=5mqANuHohqI"),

      ModelYoutube(
          image:"https://i.ytimg.com/vi/CgXxfYS612E/maxresdefault.jpg",
          title:"Android Studio Global Chat ViewModel ,WebSocket example",
          href:"https://www.youtube.com/watch?v=CgXxfYS612E"),

      ModelYoutube(
          image:"https://i.ytimg.com/vi/cACHcjwv7Mk/maxresdefault.jpg",
          title:"Android Studio Grid Gallery  ViewModel ,Data Binding ,Rest Api , Retrofit2 example",
          href:"https://www.youtube.com/watch?v=cACHcjwv7Mk"),

      ModelYoutube(
          image:"https://i.ytimg.com/vi/JOUGOIySLGk/maxresdefault.jpg",
          title:"Android Studio  Footbal News ViewModel ,Live Data ,Rest Api , Okhttp example",
          href:"https://www.youtube.com/watch?v=JOUGOIySLGk"),

      ModelYoutube(
          image:"https://i.ytimg.com/vi/X9slxOEGilM/maxresdefault.jpg",
          title:"Android Studio-#Tip8 CSV Google spreadsheet /Example Source Code",
          href:"https://www.youtube.com/watch?v=X9slxOEGilM"),

      ModelYoutube(
          image:"https://i.ytimg.com/vi/RO20k85h7f0/maxresdefault.jpg",
          title:"Aplikacja pogodowa w Android Studio Część 2 - Rest Api OkHttp",
          href:"https://www.youtube.com/watch?v=RO20k85h7f0"),

      ModelYoutube(
          image:"https://upload.wikimedia.org/wikipedia/commons/thumb/7/75/YouTube_social_white_squircle_%282017%29.svg/1200px-YouTube_social_white_squircle_%282017%29.svg.png",
          title:"More on my Youtube",
          href:"https://www.youtube.com/channel/UCseP9k1DwSAqzZ-iyeAlTvg"),

    ];



    return SizedBox(
      height: 600,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text("My latest videos",
              textAlign: TextAlign.left,
              style: TextStyle(

                  fontSize: 35,
                  fontWeight: FontWeight.normal,
                  color: Colors.black87)),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: SingleChildScrollView(
                child: Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [

                    InkWell(
                      onTap: () {
                        js.context.callMethod("open", [
                          myAppsLis.elementAt(0).href
                        ]);
                      },
                      child: MenuCard(
                        title: myAppsLis.elementAt(0).title,
                        html: myAppsLis.elementAt(0).image,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        js.context.callMethod("open", [
                          myAppsLis.elementAt(1).href
                        ]);
                      },
                      child: MenuCard(
                        title: myAppsLis.elementAt(1).title,
                        html: myAppsLis.elementAt(1).image,
                      ),
                    ),

                    InkWell(
                      onTap: () {
                        js.context.callMethod("open", [
                          myAppsLis.elementAt(2).href
                        ]);
                      },
                      child: MenuCard(
                        title: myAppsLis.elementAt(2).title,
                        html: myAppsLis.elementAt(2).image,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        js.context.callMethod("open", [
                          myAppsLis.elementAt(3).href
                        ]);
                      },
                      child: MenuCard(
                        title: myAppsLis.elementAt(3).title,
                        html: myAppsLis.elementAt(3).image,
                      ),
                    ),

                    InkWell(
                      onTap: () {
                        js.context.callMethod("open", [
                          myAppsLis.elementAt(4).href
                        ]);
                      },
                      child: MenuCard(
                        title: myAppsLis.elementAt(4).title,
                        html: myAppsLis.elementAt(4).image,
                      ),
                    ),

                    InkWell(
                      onTap: () {
                        js.context.callMethod("open", [
                          myAppsLis.elementAt(5).href
                        ]);
                      },
                      child: MenuCard(
                        title: myAppsLis.elementAt(5).title,
                        html: myAppsLis.elementAt(5).image,
                      ),
                    ),

                    InkWell(
                      onTap: () {
                        js.context.callMethod("open", [
                          myAppsLis.elementAt(6).href
                        ]);
                      },
                      child: MenuCard(
                        title: myAppsLis.elementAt(6).title,
                        html: myAppsLis.elementAt(6).image,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        js.context.callMethod("open", [
                          myAppsLis.elementAt(7).href
                        ]);
                      },
                      child: MenuCard(
                        title: myAppsLis.elementAt(7).title,
                        html: myAppsLis.elementAt(7).image,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        js.context.callMethod("open", [
                          myAppsLis.elementAt(8).href
                        ]);
                      },
                      child: MenuCard(
                        title: myAppsLis.elementAt(8).title,
                        html: myAppsLis.elementAt(8).image,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        js.context.callMethod("open", [
                          myAppsLis.elementAt(9).href
                        ]);
                      },
                      child: MenuCard(
                        title: myAppsLis.elementAt(9).title,
                        html: myAppsLis.elementAt(9).image,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        js.context.callMethod("open", [
                          myAppsLis.elementAt(10).href
                        ]);
                      },
                      child: MenuCard(
                        title: myAppsLis.elementAt(10).title,
                        html: myAppsLis.elementAt(10).image,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        js.context.callMethod("open", [
                          myAppsLis.elementAt(11).href
                        ]);
                      },
                      child: MenuCard(
                        title: myAppsLis.elementAt(11).title,
                        html: myAppsLis.elementAt(11).image,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        js.context.callMethod("open", [
                          myAppsLis.elementAt(12).href
                        ]);
                      },
                      child: MenuCard(
                        title: myAppsLis.elementAt(12).title,
                        html: myAppsLis.elementAt(12).image,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        js.context.callMethod("open", [
                          myAppsLis.elementAt(13).href
                        ]);
                      },
                      child: MenuCard(
                        title: myAppsLis.elementAt(13).title,
                        html: myAppsLis.elementAt(13).image,
                      ),
                    ),
                  ],
                )),
          )
        ],
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
          ? 250
          : 250,
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
            height: 120,
          ),
        Container(
                  height: 120,
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
                ),
        ],
      ),
    );
  }
}
