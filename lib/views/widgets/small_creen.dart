import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio_website/constant/color_constant.dart';
import 'dart:html' as html;

class SmallScreen extends StatelessWidget {
  const SmallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 200,
        left: 40,
        child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.25,
            child: FittedBox(
              child: CircleAvatar(
                radius: 252,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/me.webp',
                  ),
                  radius: 250,
                  backgroundColor: primaryColor,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 24,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: FittedBox(
                  child: Text(
                    'Raymundo \nMelecio',
                    style: TextStyle(fontSize: 80, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: FittedBox(
                  child: Text(
                      'I\'m Passionate in different tech stack, most specifically in mobile and web development technology.\nHas also wide knowledge in different frontend technology such as javascript html and css.\nAlso interested in backend technology in different tech stack.\nStrong background in native android development and cross platform framework for mobile development.',
                      style: TextStyle(
                          fontSize: 18, color: Colors.white70, fontWeight: FontWeight.w200)),
                ),
              ),
              SizedBox(
                height: 64,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: FittedBox(
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text('Mobile App Developer',
                            style: TextStyle(
                                fontSize: 24, color: secondaryColor, fontWeight: FontWeight.w200)),
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
                        onPressed: () {
                          html.window.open("https://www.facebook.com/raymundo.melecio", 'facebook');
                        },
                        iconSize: 60,
                      ),
                      IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.twitter,
                          color: Color(0xFF00acee),
                          size: 40,
                        ),
                        onPressed: () {
                          html.window.open("https://twitter.com/MelecioRaymundo", 'twitter');
                        },
                        iconSize: 60,
                      ),
                      IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.linkedin,
                          color: Colors.white,
                          size: 40,
                        ),
                        onPressed: () {},
                        iconSize: 60,
                      ),
                      IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.instagram,
                          color: Colors.white,
                          size: 40,
                        ),
                        onPressed: () {
                          html.window
                              .open("https://www.instagram.com/raymundomelecio/", 'instagram');
                        },
                        iconSize: 60,
                      ),
                      IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.googlePlay,
                          color: Colors.green,
                          size: 40,
                        ),
                        onPressed: () {
                          html.window.open(
                              "https://play.google.com/store/apps/developer?id=RAYMUNDO+MELECIO&hl=en",
                              'google play');
                        },
                        iconSize: 60,
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ]));
  }
}
