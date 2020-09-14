import 'package:flutter/material.dart';
import 'package:my_portfolio_website/constant/color_constant.dart';
import 'package:my_portfolio_website/views/widgets/nav_bar_item.dart';
import 'package:my_portfolio_website/views/widgets/responsive_widget.dart';

class NavBar extends StatefulWidget implements PreferredSizeWidget {
  final int selectedNavbarIndex;
  final Function(String positionWidget) onClick;
  NavBar({Key key, this.onClick, this.selectedNavbarIndex}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}

class _NavBarState extends State<NavBar> {
  int _selectedNavbarIndex;

  @override
  Widget build(BuildContext context) {
    _selectedNavbarIndex = widget.selectedNavbarIndex;
    return ResponsiveWidget(
      smallScreen: AppBar(
        elevation: 0,
        backgroundColor: bgColor,
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {
              if (Scaffold.of(context).isDrawerOpen) {
                Navigator.pop(context);
              } else {
                Scaffold.of(context).openDrawer();
              }
            }),
      ),
      largeScreen: Container(
        padding: EdgeInsets.all(8),
        color: bgColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Yamamz',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
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
                    widget.onClick('home');
                  },
                ),
                NavBarItem(
                  isSelected: _selectedNavbarIndex == 1 ? true : false,
                  title: 'Skills',
                  index: 1,
                  onClick: () {
                    setState(() {
                      _selectedNavbarIndex = 1;
                    });
                    widget.onClick('about');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
