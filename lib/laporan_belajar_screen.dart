import 'package:flutter/material.dart';

class LaporanBelajarScreen extends StatefulWidget {
  const LaporanBelajarScreen({super.key});

  @override
  State<LaporanBelajarScreen> createState() => _LaporanBelajarScreenState();
}

class _LaporanBelajarScreenState extends State<LaporanBelajarScreen> {
  int SelectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Laporan Belajar Santri'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
          padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [CircleAvatar(
              radius: 30,
              child: Icon(Icons.person),
            ),
            SizedBox(width: 16),
              Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Nama Santri',
                    ),
                  ),
              ),
            ],
          ),
          SizedBox(height: 24,),
          Expanded(
              child: ListView(
                children: [
                  _buildListItem('Hafalan Al-Quran :'),
                  _buildListItem('Doa-doa'),
                  _buildListItem('Kegiatan Harian'),
                  _buildListItem('Adab Harian'),
                  _buildListItem('Sholat Berjamaah'),
                  _buildListItem('Sholat Sunnah'),
                  _buildListItem('Kebersihan'),
                  _buildListItem('Cara Berpakaian'),
                  _buildListItem('Hafalan Belajar'),
                  _buildListItem('Tugas-tugas'),
                  _buildListItem('Adab Kepada Guru'),
                ],
              ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: (){},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue
                ),
                  child: Text('cancel',
                      style: TextStyle(color: Colors.white)
                  ),
              ),
              ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue
                ),
                child: Text('Simpan & Laporkan',
                    style: TextStyle(color: Colors.white)
                ),
              ),
            ],
          ),
        ],
      ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.receipt),
              label: 'Tagihan',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.description),
              label: 'Innvoice',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Akun',
            ),
          ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.blue,
        currentIndex: SelectedIndex,
        onTap: (data){
          setState(() {
            SelectedIndex= data;
          });
        },
      ),
    );
  }
}

Widget _buildListItem(String title) {
  return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
  child: Row(
    children: [
      Expanded(
          child: Text(title)),
      Text(':'),
    ],
  ),
  );
}
