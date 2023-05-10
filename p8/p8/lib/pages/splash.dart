import 'package:flutter/material.dart';
import 'package:p8/theme.dart';
import 'home_page.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Center(
        child: ListView(
          //padding buat bungkus di listview
          padding: EdgeInsets.all(25),
          children: [
            SizedBox(height: 100),
            // image for logo
            Image.asset(
              'assets/images/logoputih.png',
              width: 166,
              height: 202,
            ),
            SizedBox(height: 50),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'Enter your email',
                border: OutlineInputBorder(),
                prefixIcon: Image.asset('assets/images/email.png',
                    width: 10, height: 10),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter your password',
                border: OutlineInputBorder(),
                prefixIcon: Image.asset('assets/images/password.png',
                    width: 10, height: 10),
              ),
              obscureText: true,
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Text('Login'.toUpperCase()),
              style: ElevatedButton.styleFrom(
                primary: Color(0xff7751DD), //warna button
                minimumSize: Size(200, 40), //size w & h
              ),
            )
          ],
        ),
      ),
    );
  }
}
