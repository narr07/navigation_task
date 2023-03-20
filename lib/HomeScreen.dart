import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'PendidikanScreen.dart';
import 'PengalamanScreen.dart';
import 'ProfilScreen.dart';
import 'Warna.dart';

import 'package:url_launcher/url_launcher.dart';

final Uri _instagram = Uri.parse('https://www.instagram.com/narr07/');
final Uri _behance = Uri.parse('https://www.behance.net/narr07');
final Uri _web = Uri.parse('https://permadi.tech/');
final Uri _github = Uri.parse('https://github.com/narr07');

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75,
        title: Text(
          'Home',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: kPrimary,
        centerTitle: true,
      ),
      body: ListView(children: [
        Container(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Image.asset('assets/png/narr.png', height: 300),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Dinar Permadi Yusup',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    // Tombol Ke Profil
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return ProfilScreen();
                              }),
                            );
                          },
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.account_circle_rounded,
                                    color: Colors.white),
                              ),
                              Text('Profil Umum'),
                            ],
                          ),
                        ),
                      ),
                    ),

                    // Tombol Ke Pendidikan
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return PendidikanScreen();
                              }),
                            );
                          },
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.school_rounded,
                                    color: Colors.white),
                              ),
                              Text('Pendidikan'),
                            ],
                          ),
                        ),
                      ),
                    ),

                    // Tombol Ke Pengalaman
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return PengalamanScreen();
                              }),
                            );
                          },
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.self_improvement_rounded,
                                    color: Colors.white),
                              ),
                              Text('Pengalaman'),
                            ],
                          ),
                        ),
                      ),
                    ),

                    // hobi
                   Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Instagram
                        GestureDetector(
                          onTap: (_launchInstagram),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: kPrimary,
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        'assets/png/instagram.png',
                                        height: 30,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),

                        // behance
                        GestureDetector(
                          onTap: (_launchBehance),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: kPrimary,
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        'assets/png/behance.png',
                                        height: 30,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),

                        GestureDetector(
                          onTap: (_launchGithub),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: kPrimary,
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        'assets/png/github.png',
                                        height: 30,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (_launchWeb),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: kPrimary,
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        'assets/png/website.png',
                                        height: 30,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ]),
            ),
          ),
        ),
      ]),
    );
  }
}

Future<void> _launchInstagram() async {
  if (!await launchUrl(_instagram)) {
    throw Exception('Tidak dapat membuka $_instagram');
  }
}

Future<void> _launchBehance() async {
  if (!await launchUrl(_behance)) {
    throw Exception('Tidak dapat membuka $_behance');
  }
}

Future<void> _launchGithub() async {
  if (!await launchUrl(_github)) {
    throw Exception('Tidak dapat membuka $_github');
  }
}

Future<void> _launchWeb() async {
  if (!await launchUrl(_web)) {
    throw Exception('Tidak dapat membuka $_web');
  }
}
