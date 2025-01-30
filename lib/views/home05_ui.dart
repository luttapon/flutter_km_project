import 'package:flutter/material.dart';
import 'package:flutter_km_project/widgets/show_a_ui.dart';
import 'package:flutter_km_project/widgets/show_b_ui.dart';
import 'package:flutter_km_project/widgets/show_c_ui.dart';
import 'package:flutter_km_project/widgets/show_d_ui.dart';
import 'package:flutter_km_project/widgets/show_e_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home05Ui extends StatefulWidget {
  const Home05Ui({super.key});

  @override
  State<Home05Ui> createState() => _Home05UiState();
}

class _Home05UiState extends State<Home05Ui> {
  int _selectedIndex = 2;
  List showUi = [ShowAUi(),ShowBUi(),ShowCUi(),ShowDUi(),ShowEUi()];  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text(
          'ButtonNavBar 01',
          style: TextStyle(color: Colors.white, fontFamily: 'Kanit'),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value){
          setState(() {
            _selectedIndex  = value;
          });
        },
        backgroundColor: Colors.purple,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.pink,
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.facebook,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.instagram,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.line,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.github,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.tiktok,
            ),
          )
        ],
      ),
    body: showUi[_selectedIndex],
    );
    

  }
}
