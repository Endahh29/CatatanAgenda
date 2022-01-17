import 'package:flutter/material.dart';
import 'package:sleek_button/sleek_button.dart';

class Notepage extends StatefulWidget {

  @override
  State<Notepage> createState() => _Notepage();
}

class _Notepage extends State<Notepage> {
  final _judul = TextEditingController();
  final _deskripsi = TextEditingController();
  String catatan = "Belum ada catatan ";

  @override
   Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
           title: Text('Buat Catatan'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column( 
          children: <Widget>[
            SizedBox(height: 10,),
            TextField(
              controller: _judul,
              decoration: new InputDecoration(
                labelText: 'Judul',
                border: OutlineInputBorder(
                borderRadius: new BorderRadius.circular(5.0)),
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: _deskripsi,
              decoration: new InputDecoration(
                labelText: 'Deskripsi Catatan',
                border: OutlineInputBorder(
                borderRadius: new BorderRadius.circular(5.0)),
              ),
            ),
            SizedBox(height: 30,),
            SleekButton(
              onTap: () {
              setState(() {
                catatan = _judul.text + " " + _deskripsi.text ;
                _judul.clear();
                _deskripsi.clear();
                //Route route = MaterialPageRoute(builder: (context) => /*const MyHomePage(title: '',)*/);
                //Navigator.push(context, route);
              });
                  },
              style: SleekButtonStyle.flat(
                rounded: true,
                context: context,
              ),
              child: const Text("Simpan"),
            ),
            Text(catatan),
          ]
        )
      ),
    );
  }
}

