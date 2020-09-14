import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio_website/constant/color_constant.dart';
import 'dart:html' as html;

import 'package:my_portfolio_website/views/widgets/responsive_widget.dart';

const double largeIconSize = 90;
const double mediumIconSize = 70;
const double smallIconSize = 50;
const Color mobileDevIcColor = Colors.blue;
const Color webDevIcColor = Colors.green;
const Color backendDevIcColor = Colors.white70;
const String strMobileSkills =
    'Native android development, Kotlin, Java, Dart, Flutter, Android Studio';
const String strWebSkills =
    'Vanilla Javascript, css, html, JQuery, Vue, rest api, Json';

class AboutWidget extends StatelessWidget {
  const AboutWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          ResponsiveWidget(
            largeScreen: _LargeAboutContent(),
            mediumScreen: _MediumAboutContent(),
            smallScreen: _SmallAboutContent(),
          ),
          Container(
            height: 150,
            color: primaryColor,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Get in touch',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
                FittedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Mobile #: 09324471651',
                          style: TextStyle(fontSize: 20, color: bgColor),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          'Mail me: meleciort@gmail.com',
                          style: TextStyle(fontSize: 20, color: bgColor),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    html.window.open(
                        "https://drive.google.com/file/d/1snsuw9yLmqI6PB4mJJ899MqZCkzgjSKG/view?usp=sharing",
                        'resume');
                  },
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: bgColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text('download my resume',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w200)),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _LargeAboutContent extends StatelessWidget {
  const _LargeAboutContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 100,
      width: MediaQuery.of(context).size.width,
      color: bgColor,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            width: MediaQuery.of(context).size.width,
            color: primaryColor,
            alignment: Alignment.center,
            child: Text(
              'Professional Skills',
              style: TextStyle(fontSize: 30, color: bgColor),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.mobile,
                          color: mobileDevIcColor,
                          size: largeIconSize,
                        ),
                        onPressed: () {},
                        iconSize: largeIconSize,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'Mobile Development',
                        style: TextStyle(fontSize: 28, color: Colors.white),
                      ),
                      Text(
                        strMobileSkills,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 32,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.internetExplorer,
                          color: webDevIcColor,
                          size: largeIconSize,
                        ),
                        onPressed: () {},
                        iconSize: largeIconSize,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'Web Development',
                        style: TextStyle(fontSize: 28, color: Colors.white),
                      ),
                      Text(
                        strWebSkills,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 32,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.database,
                          color: Colors.white70,
                          size: largeIconSize,
                        ),
                        onPressed: () {},
                        iconSize: largeIconSize,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'Backend Development',
                        style: TextStyle(fontSize: 28, color: Colors.white),
                      ),
                      Text(
                        'Python, PHP, Java, Django, Flask, Laravel, MySql',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _MediumAboutContent extends StatelessWidget {
  const _MediumAboutContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 100,
      width: MediaQuery.of(context).size.width,
      color: bgColor,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            width: MediaQuery.of(context).size.width,
            color: primaryColor,
            alignment: Alignment.center,
            child: Text(
              'Professional Skills',
              style: TextStyle(fontSize: 25, color: bgColor),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.mobile,
                          color: mobileDevIcColor,
                          size: mediumIconSize,
                        ),
                        onPressed: () {},
                        iconSize: mediumIconSize,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Mobile Development',
                        style: TextStyle(fontSize: 22, color: Colors.white),
                      ),
                      Text(
                        strMobileSkills,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.internetExplorer,
                          color: webDevIcColor,
                          size: mediumIconSize,
                        ),
                        onPressed: () {},
                        iconSize: mediumIconSize,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Web Development',
                        style: TextStyle(fontSize: 22, color: Colors.white),
                      ),
                      Text(
                        strWebSkills,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.database,
                          color: Colors.white70,
                          size: mediumIconSize,
                        ),
                        onPressed: () {},
                        iconSize: mediumIconSize,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Backend Development',
                        style: TextStyle(fontSize: 22, color: Colors.white),
                      ),
                      Text(
                        'Python, PHP, Java, Django, Flask, Laravel, MySql',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _SmallAboutContent extends StatelessWidget {
  const _SmallAboutContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 100,
      width: MediaQuery.of(context).size.width,
      color: bgColor,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            width: MediaQuery.of(context).size.width,
            color: primaryColor,
            alignment: Alignment.center,
            child: Text(
              'Professional Skills',
              style: TextStyle(fontSize: 25, color: bgColor),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.mobile,
                          color: mobileDevIcColor,
                          size: smallIconSize,
                        ),
                        onPressed: () {},
                        iconSize: smallIconSize,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Mobile Development',
                        style: TextStyle(fontSize: 22, color: Colors.white),
                      ),
                      Text(
                        strMobileSkills,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.internetExplorer,
                          color: webDevIcColor,
                          size: smallIconSize,
                        ),
                        onPressed: () {},
                        iconSize: smallIconSize,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Web Development',
                        style: TextStyle(fontSize: 22, color: Colors.white),
                      ),
                      Text(
                        strWebSkills,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.database,
                          color: Colors.white70,
                          size: smallIconSize,
                        ),
                        onPressed: () {},
                        iconSize: smallIconSize,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Backend Development',
                        style: TextStyle(fontSize: 22, color: Colors.white),
                      ),
                      Text(
                        'Python, PHP, Java, Django, Flask, Laravel, MySql',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
