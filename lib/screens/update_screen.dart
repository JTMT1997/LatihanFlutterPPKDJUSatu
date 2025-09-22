import 'package:flutter/material.dart';

class UpdateScreen extends StatelessWidget {
  const UpdateScreen({super.key});

final int _value = 1;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text("Halaman Edit",),
          backgroundColor: Colors.green, 
          foregroundColor: Colors.white,),
        // body: SafeArea(child: Column(
        //diubah jadi child: Padding dengan block kemudian pilih padding.
        body: SafeArea(child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
          
            //untuk supaya children nama di sebelah mana(start = kiri)
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Nama" ,style: TextStyle(color: Colors.blue),),
              TextField(style: TextStyle(color: Colors.red),),
              SizedBox(
                height: 20,
              ),
              Text("Tipe Transaksi"),
              ListTile(
                title: Text("Pemasukkan"),
                leading:Radio(groupValue:_value ,value: 1, onChanged: (value) => {},)
              ),
              ListTile(
                title: Text("Pengeluaran"),
                leading:Radio(groupValue:_value ,value: 2, onChanged: (value) => {},)
              ),
                          SizedBox(
                height: 20,
              ),
              Text("Total"),
              SizedBox(height: 20,),
              TextField(),
             ElevatedButton(
               onPressed: () {},
               style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.amber
               ),
              child: Text("Simpan"))
            ],
          
          ),
        )),
    );
  }
}
