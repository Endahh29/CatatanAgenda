import 'package:catatan_agenda_flutter/menu/update_profil.dart';
import 'package:flutter/material.dart';

class menu_profil extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profil'),
          backgroundColor: Colors.green,
        ),
        body: Center(
        //padding: EdgeInsets.all(300),
        //color: Colors.white,
        child: Column( 
          children: <Widget>[
            SizedBox(height: 70,),
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage("assets/women.png"),  
            ),
            SizedBox(height: 15,),
            Text("Wasis", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Text("Mahasiswa, 19 Tahun"),

            SizedBox(height: 30,),
              ElevatedButton(
                onPressed: (){
                 Route route = MaterialPageRoute(builder: (context) => update_profil());
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
                child: Text("Update Profil",style: TextStyle(fontSize: 15, color: Colors.white),),
              ),
            ]
          )
        ),
      ),
    );
  }
}



