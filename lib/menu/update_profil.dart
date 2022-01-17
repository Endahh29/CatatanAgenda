import 'package:catatan_agenda_flutter/menu/menu_profil.dart';
import 'package:flutter/material.dart';
import 'package:catatan_agenda_flutter/screen/menu_bar.dart';

class update_profil extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
           title: Text('Update Profil'),
           backgroundColor: Colors.green,
        ),
        body: Container(
          padding: EdgeInsets.only(left: 100, right: 100, top: 70),
          color: Colors.white,
          child: Column( 
            children: <Widget>[
              CircleAvatar(
              radius: 60,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage("assets/women.png"),  
              ),
              SizedBox(height: 10,),
              Text('Username', style: TextStyle(color: Colors.black)),
              SizedBox(height: 10,),
              TextFormField(
                style: TextStyle(color: Colors.black),
                initialValue: 'Wasis',
                decoration: InputDecoration(
                  hintText: 'username',
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: true, 
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.greenAccent,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Text('Umur', style: TextStyle(color: Colors.black)),
              SizedBox(height: 10,),
              TextFormField(
                style: TextStyle(color: Colors.black),
                initialValue: '19 Tahun',
                decoration: InputDecoration(
                  hintText: 'umur',
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: true, 
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.greenAccent,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Text('Pekerjaan', style: TextStyle(color: Colors.black)),
              SizedBox(height: 10,),
              TextFormField(
                style: TextStyle(color: Colors.black),
                initialValue: 'Mahasiswa',
                decoration: InputDecoration(
                  hintText: 'pekerjaan',
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: true, 
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.greenAccent,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 15,),
              ElevatedButton(
                onPressed: (){
                  Route route = MaterialPageRoute(builder: (context) => menu_profil());
                  Navigator.push(context, route);
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  primary: Colors.green,
                  onPrimary: Colors.lightGreenAccent,
                  minimumSize: Size(300.0, 45.0)
                ),
                child: Text("Simpan",style: TextStyle(fontSize: 15, color: Colors.white),),
              ),
            ]
          ),
        ),
      ),
    );
  }
}