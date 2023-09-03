import 'package:flutter/material.dart';
import 'package:my_portfolio_website/views/widgets/drawer_items.dart';

import '../../constant/color_constant.dart';
import '../widgets/about_widget.dart';
import '../widgets/home_widget.dart';
import '../widgets/nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _controller = ScrollController();
  int _selectedNavbarItemIndex = 0;
  @override
  void initState() {
    _controller.addListener(_scrollListener);
    super.initState();
  }

  _scrollListener() {
    if (_controller.offset >= 0 && _controller.offset < MediaQuery.of(context).size.height) {
      setState(() {
        _selectedNavbarItemIndex = 0;
      });
    } else if (_controller.offset >= MediaQuery.of(context).size.height &&
        _controller.offset < MediaQuery.of(context).size.height * 2) {
      setState(() {
        _selectedNavbarItemIndex = 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavBar(
        selectedNavbarIndex: _selectedNavbarItemIndex,
        onClick: (String positionWidget) {
          if (positionWidget == 'home') {
            _controller.animateTo(20, duration: Duration(milliseconds: 500), curve: Curves.easeIn);
          } else if (positionWidget == 'about') {
            _controller.animateTo(MediaQuery.of(context).size.height + 100,
                duration: Duration(milliseconds: 500), curve: Curves.easeIn);
          } else {
            _controller.animateTo(MediaQuery.of(context).size.height * 2,
                duration: Duration(milliseconds: 500), curve: Curves.easeIn);
          }
        },
      ),
      drawer: Drawer(
        child: Draweritems(
          onClick: (String positionWidget) {
            if (positionWidget == 'home') {
              _controller.animateTo(20,
                  duration: Duration(milliseconds: 500), curve: Curves.easeIn);
            } else if (positionWidget == 'about') {
              _controller.animateTo(MediaQuery.of(context).size.height + 100,
                  duration: Duration(milliseconds: 500), curve: Curves.easeIn);
            } else {
              _controller.animateTo(MediaQuery.of(context).size.height * 2,
                  duration: Duration(milliseconds: 500), curve: Curves.easeIn);
            }
          },
        ),
      ),
      body: SingleChildScrollView(
          controller: _controller,
          child: Container(
            color: bgColor,
            child: Column(
              children: [
                HomeWidget(),
                AboutWidget(),
              ],
            ),
          )),
    );
  }
}
