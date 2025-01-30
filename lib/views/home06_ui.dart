import 'package:flutter/material.dart';
import 'package:flutter_km_project/widgets/show_a_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:flutter_km_project/widgets/show_c_ui.dart';
import 'package:flutter_km_project/widgets/show_b_ui.dart';
import 'package:flutter_km_project/widgets/show_e_ui.dart';
import 'package:flutter_km_project/widgets/show_d_ui.dart';
class Home06Ui extends StatefulWidget {
  const Home06Ui({super.key});

  @override
  State<Home06Ui> createState() => _Home06UiState();
}

class _Home06UiState extends State<Home06Ui>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
   int _selectedIndex = 2;
   List showUi = [ShowAUi(), ShowBUi(), ShowCUi(), ShowDUi(), ShowEUi()];  

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'ButtonNavBar 02',
          style: TextStyle(color: Colors.white, fontFamily: 'Kanit'),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: SalomonBottomBar(
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        currentIndex: _selectedIndex,
        items: [
          SalomonBottomBarItem(
              icon: Icon(FontAwesomeIcons.facebook),
              title: Text(
                'Facebook',
              ),
              selectedColor: Colors.blue),
          SalomonBottomBarItem(
              icon: Icon(FontAwesomeIcons.instagram),
              title: Text(
                'instagram',
              ),
              selectedColor: Colors.pink),
          SalomonBottomBarItem(
              icon: Icon(FontAwesomeIcons.line),
              title: Text(
                'line',
              ),
              selectedColor: Colors.green),
          SalomonBottomBarItem(
              icon: Icon(FontAwesomeIcons.github),
              title: Text(
                'github',
              ),
              selectedColor: Colors.grey),
          SalomonBottomBarItem(
              icon: Icon(FontAwesomeIcons.tiktok),
              title: Text(
                'tiktok',
              ),
              selectedColor: Colors.black)
        ],
      ),
       body: showUi[_selectedIndex],
    );
  }
}
