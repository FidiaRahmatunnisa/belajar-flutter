import 'package:flutter/material.dart';
import 'package:latihan_navigasi/main_page.dart';

class Login_Page extends StatelessWidget {
  const Login_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return Main_Page();
            }));
          },
          child: Text(
            'LOGIN',
            style: TextStyle(),
          ),
        ),
      ),
    );
  }
}
