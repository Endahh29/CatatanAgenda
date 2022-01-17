import 'package:catatan_agenda_flutter/menu/menu_buat.dart';
import 'package:flutter/material.dart';
import 'package:catatan_agenda_flutter/menu/menu_profil.dart';
import 'package:catatan_agenda_flutter/menu/menu_catatan.dart';

class LayoutNavigationBar extends StatefulWidget {

 @override
 _LayoutNavigationBarState createState() => _LayoutNavigationBarState();

}

class _LayoutNavigationBarState extends State<LayoutNavigationBar> {

  void onBarTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  int _currentIndex = 0;
  final List<Widget> _children = [
    menu_catatan(),
    Insert(),
    //Notepage(),
    menu_profil(),
    
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Catatan Agenda',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onBarTapped,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.event_note,color: Colors.black),
            label: 'Catatanku', 
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.create,color: Colors.black),
            label: 'Buat catatan',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.person,color: Colors.black),
            label:'Profil',
          ),
        ],
      ),
      ),
    );
  }
}