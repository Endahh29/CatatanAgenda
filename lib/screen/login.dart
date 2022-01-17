import 'package:flutter/material.dart';
import 'package:catatan_agenda_flutter/screen/menu_bar.dart';

//Membuat halaman login aplikasi
class Login extends StatefulWidget {

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(100),
        color: Colors.white,
        child: Column( 
          children: <Widget>[
            SizedBox(height: 3,),
            Text("MY TO DO", style: TextStyle(fontSize: 38, color: Colors.black87, fontWeight:FontWeight.bold)),

            SizedBox(height: 20,),
            Text("Aplikasi Catatan Agenda Harian", style: TextStyle(fontSize: 15, color: Colors.black87),),

            SizedBox(height: 70,),
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

            SizedBox(height: 30,),
            Text('Password', style: TextStyle(color: Colors.black)),
            SizedBox(height: 10,),
            TextFormField(
              style: TextStyle(color: Colors.black),
              initialValue: '12345',
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'password',
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

            SizedBox(height: 30,),
            ElevatedButton(
              onPressed: (){
                Route route = MaterialPageRoute(builder: (context) => LayoutNavigationBar());
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
              child: Text("Masuk",style: TextStyle(fontSize: 15, color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}