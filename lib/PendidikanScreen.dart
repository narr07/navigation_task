import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:navigation_task/Warna.dart';

class PendidikanScreen extends StatelessWidget {
  const PendidikanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Pendidikan'),
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
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                      child: Text(
                        'SMP:',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  Container(
                    color: kAccent,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                      child: Text(
                        'SMPN 1 Rajagaluh',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  Container(
                    color: kAccent2,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                      child: Text(
                        'SMA:',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  Container(
                    color: kAccent,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                      child: Text(
                        'SMAN 1 Rajagaluh',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  Container(
                    color: kAccent2,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                      child: Text(
                        'UIVERSITAS:',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  Container(
                    color: kAccent,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                      child: Text(
                        'UPI',
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
