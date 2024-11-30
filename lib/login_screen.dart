import 'package:flutter/material.dart';
import 'package:flutter_basic/profile_screen.dart';
import 'package:flutter_basic/styles.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Login'),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
            Image.asset('assets/images/icon_sp.png'),
              const SizedBox(height: 24,),
              Text('Login to your account', style: TextStyle(fontSize:20),
              ),
              const SizedBox(height: 24),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 1,
                      color: AppColors.Blue
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 1,
                      color: AppColors.Blue,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  hintText: 'Username',
                ),
              ),
              const SizedBox(height: 24),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        width: 1,
                        color: AppColors.Blue
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 1,
                      color: AppColors.Blue,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  hintText: 'Password',
                ),
              ),
              const SizedBox(height: 8),
              Text('Forgot Password ?'),
              const SizedBox(height: 24),
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()),
                    );
                  },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue
                ),
                  child: Text('Login',
                      style: TextStyle(color: Colors.white)
                  ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

