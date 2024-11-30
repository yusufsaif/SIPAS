import 'package:flutter/material.dart';

class DataSantriScreen extends StatelessWidget {
  const DataSantriScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Santri'), centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text('Masukkan Data Santri'),
              SizedBox(height: 24),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Nama Santri',
                  hintText: 'Masukkan Nama Santri',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 24),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Tempat Lahir',
                  hintText: 'Masukkan Tempat Lahir',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 24),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Tanggal Lahir',
                  hintText: 'Masukkan Tanggal Lahir',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 24),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Alamat',
                  hintText: 'Masukkan Alamat Santri',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 24),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Anak Ke',
                  hintText: 'Anak Ke-',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 24),
              TextField(
                decoration: InputDecoration(
                  labelText: 'NIK',
                  hintText: 'Masukkan NIK Santri',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 24),
              ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue
                ),
                child: Text('Tambah Data Santri',
                    style: TextStyle(color: Colors.white)
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
