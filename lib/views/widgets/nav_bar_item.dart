import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_portfolio_website/constant/color_constant.dart';
import 'package:my_portfolio_website/views/widgets/responsive_widget.dart';

class NavBarItem extends StatefulWidget {
  final String title;
  final bool isSelected;
  final int index;
  final Function() onClick;
  const NavBarItem(
      {Key? key,
      required this.title,
      this.isSelected = false,
      required this.index,
      required this.onClick})
      : super(key: key);

  @override
  _NavBarItemState createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> {
  Color _bgColor = Colors.transparent;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: GestureDetector(
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
            decoration: BoxDecoration(color: _bgColor, borderRadius: BorderRadius.circular(10)),
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            duration: Duration(milliseconds: 500),
            child: Text(
              widget.title,
              style:
                  TextStyle(color: widget.isSelected ? primaryColor : Colors.white, fontSize: 16),
            ),
          ),
        ),
      ),
      mediumScreen: GestureDetector(
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
            decoration: BoxDecoration(color: _bgColor, borderRadius: BorderRadius.circular(10)),
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            duration: Duration(milliseconds: 500),
            child: Text(
              widget.title,
              style:
                  TextStyle(color: widget.isSelected ? primaryColor : Colors.white, fontSize: 16),
            ),
          ),
        ),
      ),
      smallScreen: GestureDetector(
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
            width: MediaQuery.of(context).size.width,
            curve: Curves.easeIn,
            decoration: BoxDecoration(color: _bgColor, borderRadius: BorderRadius.circular(10)),
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            duration: Duration(milliseconds: 500),
            child: Text(
              widget.title,
              style:
                  TextStyle(color: widget.isSelected ? primaryColor : Colors.white, fontSize: 12),
            ),
          ),
        ),
      ),
    );
  }
}
