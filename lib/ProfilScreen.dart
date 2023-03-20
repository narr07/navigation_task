import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:navigation_task/Warna.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Profil Umum'),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: kAccent2,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                      child: Text(
                        'Nama Lengkap:',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  Container(
                    color: kAccent,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                      child: Text(
                        'Dinar Permadi Yusup',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  Container(
                    color: kAccent2,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                      child: Text(
                        'Tempat Tanggal Lahir:',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  Container(
                    color: kAccent,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                      child: Text(
                        'Majalengka, 1 Januari 1111',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  Container(
                    color: kAccent2,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                      child: Text(
                        'Alamat:',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  Container(
                    color: kAccent,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                      child: Text(
                        'Mau Tahu Aja 😏',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
