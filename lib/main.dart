import 'package:flutter/material.dart';
import 'package:manajemen_kuangan/screens/create_screen.dart';
import 'package:manajemen_kuangan/screens/update_screen.dart';

//langkah 1
void main() {
  runApp(MyApp());
}

// langkah 2 Create class, CAll Run (Myapp())
class MyApp extends StatelessWidget {
  const MyApp({super.key});


//Langkah 3.( Ketik STL)dan return   Material APp
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Management Keuangan",
        //homepage nama di aplikasi
        // home: MyHomePage(),
        // diganti menu home bya
        home:UpdateScreen(),
        debugShowCheckedModeBanner: false,
    );
  }
}

//Langkah 4( Ketik STL) stl = StatelessWidget dan return Scaffold
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Management Keuangan",
        style:TextStyle(color: Colors.white, 
        fontWeight: FontWeight.bold,),),
        // toolbarTextStyle: TextStyle(color: Colors.blue),
        // foregroundColor : Colors.white
      ),
         //Langkah 5. tambahkan safe areia
         //Fungsi Children untuk Rowspan: 
      body : SafeArea(child: Column(children: [
        SizedBox(
          height: 20,
        ),
        Text("Total Pemasukan : Rp. 1000000"),
        SizedBox(
          height: 20,
        ),
        Text("Total Pengeluaran : Rp. 2000000"),
        //Langkah 6. Tambahkan Lis  `t
        ListTile(
          title: Text("Makan siang"),
          subtitle: Text("Rp 2000"),
          //Langkah 7. Tambahkan Leading(Sebelah Kiri) untuk menambahkan gambar/icon
          leading: Icon(
            Icons.download,
            color: Colors.green,   
          //langkah 8. Tambakan Trailing (Sebelah Kanan)  Untuk menambahkan Icon       
          ),
          trailing: Wrap(

            children: [            
            Icon(Icons.edit, color: Colors.grey,),

            //langkah 9 tambahkan sizedbox, untuk pengukuran margin
            SizedBox(
              width: 30,
            ),
            Icon(Icons.delete, color:Colors.red,),]

          ),

        )
      ],))
    );
  }

}