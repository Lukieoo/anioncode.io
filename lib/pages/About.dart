import 'dart:html';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'dart:js' as js;

import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterapp/Models/DesciptionApp.dart';
import 'package:flutterapp/Models/YoutubeModel.dart';

class LargeAbout extends StatefulWidget {
  @override
  _LargeAboutState createState() => _LargeAboutState();
}

class _LargeAboutState extends State<LargeAbout> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 680,
      child: Padding(
        padding: const EdgeInsets.all(46.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            MenuCard(
              html: "assets/Lukieoo.png",
              title: "Paweł Krzyściak / Lukieoo",
            ),
            SizedBox(width: 20,),
            Flexible(
              fit: FlexFit.loose,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Card(
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(45.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              "Hi, I ‘m Android Developer in work and overtime Flutter Developer. I create my applications in Java / Kotlin / Dart. In the meantime I'm developing my Github and creating video on my Youtube.",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: "Montserrat-Regular",
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black87)),
                          SizedBox(
                            height: 20,
                          ),
                          Text("Skills in",
                              style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87)),
                          Container(
                            padding: const EdgeInsets.all(15.0),
                            child: Wrap(
                                alignment: WrapAlignment.start,
                                spacing: 10,
                                runSpacing: 10,
                                children: [
                                  Image.network(
                                    "https://www.mmj.ne.jp/wp-content/uploads/kotlin_logo.jpg",
                                    height: 72,
                                  ),
                                  Image.network(
                                    "https://greenlogic.pl/wp-content/uploads/2019/07/java_logo-1200x700.png",
                                    height: 70,
                                  ),
                                  Image.network(
                                    "https://miro.medium.com/max/3840/1*v61-QL8UkB1OGUdBpFCQqQ.png",
                                    height: 72,
                                  )
                                ]),
                          ),
                          Text("Programing with",
                              style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87)),
                          Container(
                            padding: const EdgeInsets.all(15.0),
                            child: Wrap(
                                alignment: WrapAlignment.start,
                                spacing: 40,
                                runSpacing: 10,
                                children: [
                                  Image.network(
                                    "https://2.bp.blogspot.com/-tzm1twY_ENM/XlCRuI0ZkRI/AAAAAAAAOso/BmNOUANXWxwc5vwslNw3WpjrDlgs9PuwQCLcBGAsYHQ/s1600/pasted%2Bimage%2B0.png",
                                    height: 50,
                                  ),

                                  Image.network(
                                    "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2d/Visual_Studio_Code_1.18_icon.svg/1200px-Visual_Studio_Code_1.18_icon.svg.png",
                                    height: 50,
                                  ),
                                  Image.network(
                                    "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d5/IntelliJ_IDEA_Logo.svg/1200px-IntelliJ_IDEA_Logo.svg.png",
                                    height: 50,
                                  )
                                ]),
                          ),
                          Text("Contact",
                              style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87)),
                          SizedBox(
                            height: 30,
                          ),
                          SelectableText(

                              "pawkrzysciak@gmail.com",
                              style: TextStyle(
                                  fontSize: 15,

                                  fontFamily: "Montserrat-Regular",
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black87)

                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )

//            SizedBox(
//              height: 30,
//            ),
          ],
        ),
      ),
    );
  }
}

class SmallAbout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
        Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          MenuCard(
            html: "assets/Lukieoo.png",
            title: "Paweł Krzyściak / Lukieoo",
          ),
          SizedBox(
            height: 30,
          ),

            Container(
              width: MediaQuery.of(context).size.width ,
              child: Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(45.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                          "Hi, I ‘m Android Developer in work and overtime Flutter Developer. I create my applications in Java / Kotlin / Dart. In the meantime I'm developing my Github and creating video on my Youtube.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize:   (MediaQuery.of(context).size.width > 970)?20:15,

                              fontFamily: "Montserrat-Regular",
                              fontWeight: FontWeight.normal,
                              color: Colors.black87)),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Skills in",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87)),
                      Container(
                        padding: const EdgeInsets.all(15.0),
                        child: Wrap(
                            alignment: WrapAlignment.start,
                            spacing: 10,
                            runSpacing: 10,
                            children: [
                              Image.network(
                                "https://www.mmj.ne.jp/wp-content/uploads/kotlin_logo.jpg",
                                height: 72,
                              ),
                              Image.network(
                                "https://greenlogic.pl/wp-content/uploads/2019/07/java_logo-1200x700.png",
                                height: 70,
                              ),
                              Image.network(
                                "https://miro.medium.com/max/3840/1*v61-QL8UkB1OGUdBpFCQqQ.png",
                                height: 72,
                              )
                            ]),
                      ),
                      Text("Programing with",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87)),
                      Container(
                        padding: const EdgeInsets.all(15.0),
                        child: Wrap(
                            alignment: WrapAlignment.start,
                            spacing: 40,
                            runSpacing: 10,
                            children: [
                              Image.network(
                                "https://2.bp.blogspot.com/-tzm1twY_ENM/XlCRuI0ZkRI/AAAAAAAAOso/BmNOUANXWxwc5vwslNw3WpjrDlgs9PuwQCLcBGAsYHQ/s1600/pasted%2Bimage%2B0.png",
                                height: 72,
                              ),

                              Image.network(
                                "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2d/Visual_Studio_Code_1.18_icon.svg/1200px-Visual_Studio_Code_1.18_icon.svg.png",
                                height: 70,
                              ),
                              Image.network(
                                "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d5/IntelliJ_IDEA_Logo.svg/1200px-IntelliJ_IDEA_Logo.svg.png",
                                height: 72,
                              )
                            ]),
                      ),
                      Text("Contact",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87)),
                      SizedBox(
                        height: 30,
                      ),
                      SelectableText(

                          "pawkrzysciak@gmail.com",
                          style: TextStyle(
                              fontSize: 15,

                              fontFamily: "Montserrat-Regular",
                              fontWeight: FontWeight.normal,
                              color: Colors.black87)

                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
            ),

        ],

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
      width: (MediaQuery.of(context).size.width > 970)
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
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            // Image.asset(image, height: 40),
            Image.asset(
              html,
              height: 140,
            ),
            Column(
              children: [
                Container(
                  height: 50,
                  alignment: Alignment.center,
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Montserrat-Regular",
                        color: Colors.black87),
                  ),
                ),
                Container(
                  height: 50,
                  alignment: Alignment.center,
                  child: Text(
                    "Mobile Developer",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Montserrat-Bold",
                        color: Colors.black87),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.network(
                      "https://cdn.pixabay.com/photo/2018/06/02/05/17/poland-3447820_960_720.png",
                      height: 50,
                    ),
                    Text(
                      "Poland",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Wrap(
                  alignment: WrapAlignment.end,
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                        child: FloatingActionButton(
                      backgroundColor: Colors.white10,
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset("assets/github.png"),
                      )),
                      onPressed: () {
                        js.context
                            .callMethod("open", ["https://github.com/Lukieoo"]);
//                            _launchURL("https://github.com/Lukieoo");
                      },
                    )),
                    SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                        child: FloatingActionButton(
                      backgroundColor: Colors.white10,
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset("assets/youtube.png"),
                      )),
                      onPressed: () {
                        js.context.callMethod("open", [
                          "https://www.youtube.com/channel/UCseP9k1DwSAqzZ-iyeAlTvg"
                        ]);
                      },
                    )),
                    SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                        child: FloatingActionButton(
                      backgroundColor: Colors.white10,
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset("assets/fb.png"),
                      )),
                      onPressed: () {
                        js.context.callMethod("open", [
                          "https://www.facebook.com/Anion-Code-115934359788737"
                        ]);
                      },
                    )),
                    SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                        child: FloatingActionButton(
                      backgroundColor: Colors.white10,
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset("assets/google.png"),
                      )),
                      onPressed: () {
                        js.context.callMethod("open", [
                          "https://play.google.com/store/apps/dev?id=5300491392807005874"
                        ]);
                      },
                    )),
                    SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                        child: FloatingActionButton(
                      backgroundColor: Colors.white10,
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset("assets/linkedin.png"),
                      )),
                      onPressed: () {
                        js.context.callMethod("open", [
                          "https://www.linkedin.com/in/pawe%C5%82-krzy%C5%9Bciak-2691a8186/"
                        ]);
                      },
                    )),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
