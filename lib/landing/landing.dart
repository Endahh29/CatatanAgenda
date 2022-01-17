import 'package:flutter/material.dart';
import 'login.dart';

//Membuat landing saat masuk aplikasi
class Landing extends StatefulWidget {

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(8),
        color: Colors.white70,
        child: Column(
          children: <Widget>[
            SizedBox(height: 200,),
            Text("MY TO DO", style: TextStyle(fontSize: 38, color: Colors.black87, fontWeight:FontWeight.bold),),

            SizedBox(height: 20,),
            Text("Aplikasi Catatan Agenda Harian", style: TextStyle(fontSize: 15, color: Colors.black87),),

            SizedBox(height: 200,),
            ElevatedButton(
              onPressed: (){ 
                Route route = MaterialPageRoute(builder: (context) => Login());
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
              child: Text("Mulai",style: TextStyle(fontSize: 15, color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}