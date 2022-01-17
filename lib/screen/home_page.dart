import 'package:flutter/material.dart';
import 'package:catatan_agenda_flutter/screen/note.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
           title: Text('Catatan Agenda'),
      ),
      body: Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Belum ada catatan'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){ 
          Route route = MaterialPageRoute(builder: (context) => Notepage());
          Navigator.push(context, route);
        },
        child: const Icon(Icons.add),
      ), 
    );
  }
}
