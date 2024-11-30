import 'package:flutter/material.dart';
import 'package:flutter_basic/styles.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Admin SIPAS'), centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.grey,
              child: Icon(Icons.person, size: 40, color: Colors.white,),
            ),
            Text("Nama"),
            SizedBox(height: 14),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 1,
                    color: AppColors.Blue
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 1,
                    color: AppColors.Blue
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                ),
                hintText: "Nama",
              ),
            ),
            SizedBox(height: 14),
            Text("Email"),
            SizedBox(height: 14),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      width: 1,
                      color: AppColors.Blue
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      width: 1,
                      color: AppColors.Blue
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                ),
                hintText: "Email",
              ),
            ),
            SizedBox(height: 14),
            Text("Username"),
            SizedBox(height: 14),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      width: 1,
                      color: AppColors.Blue
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      width: 1,
                      color: AppColors.Blue
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                ),
                hintText: "Username",
              ),
            ),
            SizedBox(height: 14),
            Text("Password"),
            SizedBox(height: 14),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      width: 1,
                      color: AppColors.Blue
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      width: 1,
                      color: AppColors.Blue
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                ),
                hintText: "Password",
              ),
            ),
            SizedBox(height: 14),
            Text("Phone Number"),
            SizedBox(height: 14),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      width: 1,
                      color: AppColors.Blue
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      width: 1,
                      color: AppColors.Blue
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                ),
                hintText: "Phone Number",
              ),
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
        currentIndex: selectedIndex,
        onTap: (data){
          setState(() {
            selectedIndex = data;
          });
        },
      ),
    );
  }
}
