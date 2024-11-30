import 'package:flutter/material.dart';
import 'package:flutter_basic/edit_profile_screen.dart';
import 'package:flutter_basic/styles.dart';

class Simpan extends StatelessWidget {
  const Simpan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin SIPAS'), centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CircleAvatar(
              maxRadius: 50,
            ),
            const SizedBox(height: 24.0),
            const Text("Nama : ADMIN"),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("@admin12345"),
              ],
            ),
            const SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfileScreen()),
                );
              },
              child: const Text("Edit Profile"),
            ),
            SizedBox(height: 24.0),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      width: 1.0,
                      color: AppColors.Blue
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      width: 1.0,
                      color: AppColors.Blue
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                ),
                hintText: "Data Santri",
              ),
            ),
            SizedBox(height: 24.0),

          ],
        ),

      ),
    );
  }
}