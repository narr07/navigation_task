import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PengalamanScreen extends StatelessWidget {
  const PengalamanScreen({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pengalaman'),
      
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Ke Home Aja Karena Belum Ada Pengalaman 🙄 !'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}