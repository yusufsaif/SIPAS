import 'package:flutter/material.dart';
import 'package:flutter_basic/data_santri_screen.dart';
import 'package:flutter_basic/data_wali_screen.dart';
import 'package:flutter_basic/edit_profile_screen.dart';
import 'package:flutter_basic/history_transaksi_screen.dart';
import 'package:flutter_basic/laporan_belajar_screen.dart';
import 'package:flutter_basic/styles.dart';
import 'component/list_item_profil.dart';
import 'package:flutter_basic/tagihan_screen.dart';
import 'package:flutter_basic/invoice_screen.dart';
import 'package:flutter_basic/akun_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int selectedIndex = 0;

  void _onItemTapped(int index){
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin SIPAS'), centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.person, size: 40, color: Colors.white),
                      ),
                    SizedBox(width: 16),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Nama Admin',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal
                              ),
                            ),
                            Text('@admin12345'),
                          ],
                        ),
                        SizedBox(width: 100,),
                        ElevatedButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfileScreen()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue
                          ),
                          child: Text('Edit Profile',
                              style: TextStyle(color: Colors.white)
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 24),
                ListItemProfil(
                  label: "Data Santri",
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DataSantriScreen()),
                    );
                  },
                ),
                SizedBox(height: 14),
                ListItemProfil(
                  label: "Data Wali Santri",
                onTap: (){
                    Navigator.push(
                        context,
                    MaterialPageRoute(builder: (context) => DataWaliScreen()),
                    );
                },
                ),
                SizedBox(height: 14),
                ListItemProfil(
                  label: "Laporan Belajar",
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LaporanBelajarScreen()),
                    );
                  },
                ),
                SizedBox(height: 14),
                ListItemProfil(
                  label: "History Transaksi",
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HistoryTransaksiScreen()),
                    );
                  },
                ),
              ],
            ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: IconButton(icon: Icon(Icons.receipt),onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => TagihanScreen(),));
                },),
            label: 'Tagihan',
            ),
            BottomNavigationBarItem(
              icon: IconButton(icon: Icon(Icons.description),onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => InvoiceScreen(),));
              },),
              label: 'Innvoice',
            ),
            BottomNavigationBarItem(
              icon: IconButton(icon: Icon(Icons.history),onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HistoryTransaksiScreen(),));
              },),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: IconButton(icon: Icon(Icons.account_circle),onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => AkunScreen(),));
              },),
              label: 'Akun',
            ),
          ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.blue,
        currentIndex: selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

