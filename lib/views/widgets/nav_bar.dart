import 'package:flutter/material.dart';
import 'package:my_portfolio_website/views/widgets/nav_bar_item.dart';

class NavBar extends StatefulWidget {
  NavBar({Key key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedNavbarIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'LOGO',
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        Row(
          children: <Widget>[
            NavBarItem(
              isSelected: _selectedNavbarIndex == 0 ? true : false,
              title: 'Home',
              index: 0,
              onClick: () {
                setState(() {
                  _selectedNavbarIndex = 0;
                });
              },
            ),
            NavBarItem(
              isSelected: _selectedNavbarIndex == 1 ? true : false,
              title: 'About me',
              index: 1,
              onClick: () {
                setState(() {
                  _selectedNavbarIndex = 1;
                });
              },
            ),
            NavBarItem(
              isSelected: _selectedNavbarIndex == 2 ? true : false,
              title: 'Services',
              index: 2,
              onClick: () {
                setState(() {
                  _selectedNavbarIndex = 2;
                });
              },
            ),
            NavBarItem(
              isSelected: _selectedNavbarIndex == 3 ? true : false,
              title: 'Contacts',
              index: 3,
              onClick: () {
                setState(() {
                  _selectedNavbarIndex = 3;
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}
