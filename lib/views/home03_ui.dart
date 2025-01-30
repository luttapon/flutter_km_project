import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_km_project/views/home04_ui.dart';
import 'dart:io';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home03Ui extends StatefulWidget {
  const Home03Ui({super.key});

  @override
  State<Home03Ui> createState() => _Home03UiState();
}

class _Home03UiState extends State<Home03Ui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'DTI APP',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.green,
          ),
          IconButton(
            onPressed: () {
              if (Platform.isAndroid) {
                SystemNavigator.pop();
              } else if (Platform.isIOS) {
                exit(0);
              }
            },
            icon: Icon(Icons.exit_to_app),
            color: Colors.red,
          )
        ],
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Home04Ui()));
              },
              child: Text('กลับไปหน้าแรก'))
        ],
      )),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Southeast Asia University'),
              accountEmail: Text('www.sau.ac.'),
              decoration: BoxDecoration(
                color: Colors.purple,
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://cdn.pixabay.com/photo/2021/12/07/21/58/pattern-6854140_1280.png'),
              ),
              otherAccountsPictures: [
                Image.asset('assets/images/pic1.png'),
                Icon(
                  FontAwesomeIcons.facebook,
                  color: Colors.blue,
                )
              ],
            ),
          ListTile( 
            onTap: (){},
            leading: Icon(Icons.home),
            trailing: Icon(Icons.numbers),
            title: Text('หน้าแรก'),
            subtitle: Text('Home'),

          ),
          ListTile(
            onTap: (){},
            leading: Icon(
              Icons.heart_broken_sharp, color: Colors.pink,) ,
              title: Text('favorite'),
              trailing: Text('หัวใใจ'),
            ),
            ListTile(
            onTap: (){},
            leading: Icon(
              FontAwesomeIcons.google, color: Colors.red,) ,
              title: Text('Google',
              style: TextStyle(fontFamily: 'Kanit') ,),
              trailing: Text('กูเกิ้ล'),
            ),
              Divider(),
               ListTile(
            onTap: (){},
            leading: Icon(
              FontAwesomeIcons.line, color: Colors.green,) ,
              title: Text('Line',
              style: TextStyle(fontFamily: 'Kanit') ,),
              trailing: Icon(Icons.line_weight),
            ),
             ListTile(
            onTap: (){},
            leading: Icon(
              FontAwesomeIcons.instagram, color: Colors.purple,) ,
              title: Text('instagram',
              style: TextStyle(fontFamily: 'Kanit') ,),
              trailing: Icon(Icons.people_alt_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
