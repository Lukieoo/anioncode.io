import 'package:flutter/material.dart';
import 'package:flutterapp/pages/home.dart';
import 'package:flutterapp/pages/myapps.dart';
import 'widgets/navbar.dart';
import 'utils/responsiveLayout.dart';
import 'widgets/search.dart';


void main() => runApp(MaterialApp(
      title: 'Anioncode by Lukieoo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> {
  int stateNumber=0;

  void setStateNumber(int number){

    setState(() {
      stateNumber=number;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        // Color(0xFFF8FBFF),
        Color(0xFFFfffff),
        // Color(0xFFFCFDFD),
        Color(0xFFFfffff),
      ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[NavBar(setStatePage:setStateNumber), Body(stateNumber: stateNumber,)],
          ),
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {

  final stateNumber;

  const Body({Key key, this.stateNumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    switch(stateNumber){
      case 0:
        return ResponsiveLayout(
          largeScreen: LargeChild(),
          smallScreen: SmallChild(),
        );
      case 1:
        return ResponsiveLayout(
          largeScreen: LargeApps(),
          smallScreen: SmallApps(),
        );

    }



  }
}
