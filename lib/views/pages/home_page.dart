import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio_website/constant/color_constant.dart';
import 'package:my_portfolio_website/views/widgets/nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: bgColor,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Positioned(
            child: Container(
                padding: const EdgeInsets.all(16.0),
                width: MediaQuery.of(context).size.width,
                child: NavBar()),
            top: 10,
          ),
          Positioned(
              top: 150,
              left: 40,
              child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
                Image.asset(
                  'assets/images/me.png',
                ),
                SizedBox(
                  width: 24,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Raymundo \nMelecio',
                      style: TextStyle(fontSize: 80, color: Colors.white),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                        'Is Passionate in different tech stack, most specifically in mobile and web development technology.\nHas also wide knowledge in different frontend technology.\nAlso interested in backend technology in different tech stack.\n',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white70,
                            fontWeight: FontWeight.w200)),
                    SizedBox(
                      height: 64,
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text('Mobile App Developer',
                              style: TextStyle(
                                  fontSize: 24,
                                  color: secondaryColor,
                                  fontWeight: FontWeight.w200)),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.facebook,
                            color: Colors.white,
                            size: 40,
                          ),
                          onPressed: () {},
                          iconSize: 40,
                        ),
                        IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.twitter,
                            color: Color(0xFF00acee),
                            size: 40,
                          ),
                          onPressed: () {},
                          iconSize: 40,
                        ),
                        IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.linkedin,
                            color: Colors.white,
                            size: 40,
                          ),
                          onPressed: () {},
                          iconSize: 40,
                        ),
                      ],
                    )
                  ],
                )
              ]))
        ],
      ),
    );
  }
}
