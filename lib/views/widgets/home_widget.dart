import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio_website/constant/color_constant.dart';
import 'dart:html' as html;

import 'package:my_portfolio_website/views/widgets/responsive_widget.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ResponsiveWidget(
        largeScreen: _LargeHome(),
        mediumScreen: _LargeHome(),
        smallScreen: _SmallHome(),
      ),
    );
  }
}

class _SmallHome extends StatelessWidget {
  const _SmallHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size2 = 30;
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 82,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/me.webp',
                ),
                radius: 80,
                backgroundColor: primaryColor,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Raymundo Melecio',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text('Mobile App Developer',
                      style: TextStyle(
                          fontSize: 14, color: secondaryColor, fontWeight: FontWeight.w200)),
                ),
                SizedBox(
                  height: 8,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        'I\'m Passionate in different tech stack, most specifically in mobile and web development technology. Has also wide knowledge in different frontend technology such as javascript html and css. Also interested in backend technology in different tech stack. Strong background in native android development and cross platform framework for mobile development.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12, color: Colors.white70, fontWeight: FontWeight.w200)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: size2,
                      ),
                      IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.github,
                          color: Colors.white,
                          size: size2,
                        ),
                        onPressed: () {
                          html.window.open("https://www.github.com/yamamz", 'github');
                        },
                        iconSize: size2,
                      ),
                      IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.facebook,
                          color: Colors.white,
                          size: size2,
                        ),
                        onPressed: () {
                          html.window.open("https://www.facebook.com/raymundo.melecio", 'facebook');
                        },
                        iconSize: size2,
                      ),
                      IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.twitter,
                          color: Color(0xFF00acee),
                          size: size2,
                        ),
                        onPressed: () {
                          html.window.open("https://twitter.com/MelecioRaymundo", 'twitter');
                        },
                        iconSize: size2,
                      ),
                      IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.linkedin,
                          color: Colors.white,
                          size: size2,
                        ),
                        onPressed: () {},
                        iconSize: size2,
                      ),
                      IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.instagram,
                          color: Colors.white,
                          size: size2,
                        ),
                        onPressed: () {
                          html.window
                              .open("https://www.instagram.com/raymundomelecio/", 'instagram');
                        },
                        iconSize: size2,
                      ),
                      IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.googlePlay,
                          color: Colors.green,
                          size: size2,
                        ),
                        onPressed: () {
                          html.window.open(
                              "https://play.google.com/store/apps/developer?id=RAYMUNDO+MELECIO&hl=en",
                              'google play');
                        },
                        iconSize: size2,
                      ),
                    ],
                  ),
                )
              ],
            )
          ]),
    );
  }
}

class _LargeHome extends StatelessWidget {
  const _LargeHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.30,
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
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.20,
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
              width: MediaQuery.of(context).size.width * 0.6,
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
              width: MediaQuery.of(context).size.width * 0.5,
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
                        FontAwesomeIcons.github,
                        color: Colors.white,
                        size: 40,
                      ),
                      onPressed: () {
                        html.window.open("https://www.github.com/yamamz", 'github');
                      },
                      iconSize: 60,
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
                        html.window.open("https://www.instagram.com/raymundomelecio/", 'instagram');
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
      ]),
    );
  }
}
