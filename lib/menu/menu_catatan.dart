import 'package:catatan_agenda_flutter/data.dart';
import 'package:catatan_agenda_flutter/menu/menu_buat.dart';
import 'package:flutter/material.dart';


//class menu_catatan extends StatelessWidget{

class menu_catatan extends StatefulWidget {
    menu_catatan({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
    _menu_catatanState createState() => _menu_catatanState();
}
 
class _menu_catatanState extends State<menu_catatan> {
    // data customer yang akan ditampilkan di list view
    // beri nilai awal berupa list kosong agar tidak error
    // nantinya akan diisi data dari Shared Preferences
    var savedData = [];
 
    // method untuk mengambil data Shared Preferences
    getSavedData() async {
        var data = await Data.getData();
        // setelah data didapat panggil setState agar data segera dirender
        setState(() {
          savedData = data;
        });
    }
 
    // init state ini dipanggil pertama kali oleh flutter
    @override
    initState() {
        super.initState();
        // baca Shared Preferences
        getSavedData();
    }
 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
           title: Text('Catatan'),
           backgroundColor: Colors.green,
        ),
        body: Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: ListView.builder(
                    itemCount: savedData.length,
                    itemBuilder: (context, index){
                        return ListTile(
                            title: Text(savedData[index]['judul']),
                            subtitle: Text(savedData[index]['deskripsi']),
                            contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            onTap: (){
                                // aksi saat user klik pada item customer pada list view
                                // nilai diisi selain null menandakan di halaman insert operasi yang berjalan adalah update atau delete
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Insert(index: index, value: savedData[index]))
                                ).then((value){
                                    // jika halaman insert ditutup ambil kembali Shared Preferences
                                    // untuk mendapatkan data terbaru dan segera ditampilkan ke user
                                    // misal jika ada data customer yang diedit atau dihapus
                                    getSavedData();
                                });
                            },
                        );
                    }
                ),
            )
      ),
    );
  }
}