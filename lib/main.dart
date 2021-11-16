import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Catatan Agenda Harian', 
      theme: ThemeData(
      primaryColor: Colors.black,
      ),
      home: const Landing(title: 'Home Page'),
    );
  }
}

//Membuat landing saat masuk aplikasi
class Landing extends StatefulWidget {
  const Landing({Key? key, required this.title}) : super(key: key);
  final String title;

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
            SizedBox(height: 100,),
            Text("MY TO DO", style: TextStyle(fontSize: 35, color: Colors.black87, fontWeight:FontWeight.bold),),

            SizedBox(height: 20,),
            Text("Aplikasi Catatan Agenda Harian", style: TextStyle(fontSize: 15, color: Colors.black87),),

            SizedBox(height: 300,),
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
            SizedBox(height: 5,),
            Text("MY TO DO", style: TextStyle(fontSize: 35, color: Colors.black87, fontWeight:FontWeight.bold)),

            SizedBox(height: 20,),
            Text("Aplikasi Catatan Agenda Harian", style: TextStyle(fontSize: 15, color: Colors.black87),),

            SizedBox(height: 70,),
            Text('Username', style: TextStyle(color: Colors.black)),
            SizedBox(height: 10,),
            TextFormField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'username',
                hintStyle: TextStyle(color: Colors.white70),
                filled: true, 
                fillColor: Colors.grey,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Color(0xFF1CD1E),
                  ),
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
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'password',
                hintStyle: TextStyle(color: Colors.white70),
                filled: true, 
                fillColor: Colors.grey,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Color(0xFF1CD1E),
                  ),
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
              onPressed: (){},
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