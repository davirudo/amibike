import 'package:p8/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Card(
                  elevation: 3,
                  shadowColor: lightColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Column(
                          // menambahkan ca.start
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "David",
                              style: titleText,
                            ),
                            Text(
                              "12.3456.78",
                              style: subtitleText,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildCard("qr", "Nama Lengkap", "David"),
                      SizedBox(
                        height: 15,
                      ),
                      buildCard("stnk", "Prodi", "Zamn"),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Card buildCard(String gambar, String judul, String isi) {
    return Card(
      // elevation: 3,
      elevation: 3,
      shadowColor: lightColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          children: [
            Image.asset(
              'assets/images/' + gambar + '.png',
              width: 50,
              height: 50,
            ),
            SizedBox(
              width: 12,
            ),
            Column(
              // menambahkan ca.start
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  judul,
                  style: titleText,
                ),
                Text(
                  isi,
                  style: subtitleText,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
