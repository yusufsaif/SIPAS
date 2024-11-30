import 'package:flutter/material.dart';

class HistoryTransaksiScreen extends StatefulWidget {
  const HistoryTransaksiScreen({super.key});

  @override
  State<HistoryTransaksiScreen> createState() => _HistoryTransaksiScreenState();
}

class _HistoryTransaksiScreenState extends State<HistoryTransaksiScreen> {
  int SelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('History Transaksi'), centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          TransactionCard(
            name: 'Muhammad',
            type: 'Daftar Ulang',
            date: '10-09-2023',
            amount: 'Rp. 2.000.000',
          ),
          TransactionCard(
            name: 'Aldi Setiawan',
            type: 'Dana Pengembangan',
            date: '10-11-2023',
            amount: 'Rp. 4.000.000',
          ),
          TransactionCard(
            name: 'Rendi Saputra',
            type: 'Seragam dan Perlengkapan',
            date: '10-12-2023',
            amount: 'Rp. 4.000.000',
          ),
          TransactionCard(
            name: 'Roby Prasetyo',
            type: 'Seragam dan Perlengkapan',
            date: '10-12-2023',
            amount: 'Rp. 4.000.000',
          ),
          TransactionCard(
            name: 'Bayu Adhi',
            type: 'SPP Bulan November',
            date: '10-12-2023',
            amount: 'Rp. 500.000',
          ),
          TransactionCard(
            name: 'Rohmat',
            type: 'Daftar Ulang',
            date: '22-12-2023',
            amount: 'Rp. 2.000.000',
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt),
            label: 'Tagihan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.description),
            label: 'Invoice',
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
            SelectedIndex = data;
          });
        },
      ),
    );
  }
}

class TransactionCard extends StatelessWidget {
  final String name;
  final String type;
  final String date;
  final String amount;

  TransactionCard({
    required this.name,
    required this.type,
    required this.date,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$name :',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4.0),
            Text(type),
            SizedBox(height: 4.0),
            Text('Tanggal Pembayaran : $date'),
            SizedBox(height: 4.0),
            Text('Terbayar : $amount'),
          ],
        ),
      ),
    );
  }
}
