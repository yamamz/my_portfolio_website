import 'package:flutter/material.dart';
import 'package:my_portfolio_website/constant/color_constant.dart';
import 'package:my_portfolio_website/views/widgets/nav_bar_item.dart';

class Draweritems extends StatefulWidget implements PreferredSizeWidget {
  final Function(String positionWidget) onClick;
  Draweritems({Key key, this.onClick}) : super(key: key);

  @override
  _DraweritemsState createState() => _DraweritemsState();

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}

class _DraweritemsState extends State<Draweritems> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      color: bgColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          NavBarItem(
            title: 'Home',
            index: 0,
            onClick: () async {
              Navigator.pop(context);
              await Future.delayed(Duration(milliseconds: 500), () {});
              widget.onClick('home');
            },
          ),
          NavBarItem(
            title: 'About me',
            index: 1,
            onClick: () async {
              Navigator.pop(context);
              await Future.delayed(Duration(milliseconds: 500), () {});
              widget.onClick('skills');
            },
          ),
        ],
      ),
    );
  }
}
