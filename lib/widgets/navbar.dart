import 'package:flutter/material.dart';
import '../utils/responsiveLayout.dart';

class NavBar extends StatefulWidget {
  final Function setStatePage;

  NavBar({Key key, this.setStatePage}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final navLinks = [
    "Home",
    "My Apps",
    "Videos",
  ];
  bool pressMenu = false;

  List<Widget> navItem() {
    return navLinks.asMap().entries.map((entry) {
      return Padding(
        padding: EdgeInsets.only(left: 18),
        child: InkWell(
            onTap: () => {widget.setStatePage(entry.key),pressMenu = false},
            child: Container(
                margin: EdgeInsets.all(10),
                child: Text(entry.value,
                    style: TextStyle(fontFamily: "Montserrat-Bold")))),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    if(MediaQuery.of(context).size.width>800)pressMenu=false;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 45, vertical: 38),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.asset(
                    "assets/AnionCode.png",
                    height: 60,
                  )
                ],
              ),
              if (!ResponsiveLayout.isSmallScreen(context))
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[...navItem()]..add(InkWell(
                      onTap: () => {widget.setStatePage(3),
                        setState(() {
                          pressMenu = false;
                        })
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 20, right: 20),
                        width: 120,
                        height: 40,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Color(0xFFC86DD7), Color(0xFF3023AE)],
                                begin: Alignment.bottomRight,
                                end: Alignment.topLeft),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xFF6078ea).withOpacity(.3),
                                  offset: Offset(0, 8),
                                  blurRadius: 8)
                            ]),
                        child: Material(
                          color: Colors.transparent,
                          child: Center(
                            child: Text("About me",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    letterSpacing: 1,
                                    fontFamily: "Montserrat-Bold")),
                          ),
                        ),
                      ))),
                )
              else
                InkWell(
                    onTap: () => {
                          setState(() {
                            pressMenu = !pressMenu;
                          })
                        },
                    child:
                    Image.asset("assets/menu.png", width: 26, height: 26))
            ],
          ),
          (pressMenu) ? Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column( crossAxisAlignment:CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[...navItem()]..add(InkWell(
                onTap: () =>{ widget.setStatePage(3),pressMenu=false},
                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  width: 120,
                  height: 40,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xFFC86DD7), Color(0xFF3023AE)],
                          begin: Alignment.bottomRight,
                          end: Alignment.topLeft),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xFF6078ea).withOpacity(.3),
                            offset: Offset(0, 8),
                            blurRadius: 8)
                      ]),
                  child: Material(
                    color: Colors.transparent,
                    child: Center(
                      child: Text("About me",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              letterSpacing: 1,
                              fontFamily: "Montserrat-Bold")),
                    ),
                  ),
                ))) ),
          ): Container(),
        ],
      ),
    );
  }
}
