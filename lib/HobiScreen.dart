import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HobiScreen extends StatelessWidget {
  const HobiScreen({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hobi'),
      
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Nanti ya aku kasih tahu, sekarng ke home lagi aja 😍'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}