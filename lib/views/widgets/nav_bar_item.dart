import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_portfolio_website/constant/color_constant.dart';

class NavBarItem extends StatefulWidget {
  final String title;
  final bool isSelected;
  final int index;
  final Function() onClick;
  const NavBarItem(
      {Key key, this.title, this.isSelected, this.index, this.onClick})
      : super(key: key);

  @override
  _NavBarItemState createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> {
  Color _bgColor;
  @override
  void initState() {
    _bgColor = Colors.transparent;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onClick,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (pointerEvent) {
          setState(() {
            _bgColor = Colors.black87;
          });
        },
        onExit: (pointerEvent) {
          setState(() {
            _bgColor = Colors.transparent;
          });
        },
        child: AnimatedContainer(
          curve: Curves.easeIn,
          decoration: BoxDecoration(
              color: _bgColor, borderRadius: BorderRadius.circular(10)),
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          duration: Duration(milliseconds: 500),
          child: Text(
            widget.title,
            style: TextStyle(
                color: widget.isSelected ? primaryColor : Colors.white,
                fontSize: 16),
          ),
        ),
      ),
    );
  }
}
