import 'package:flutter/material.dart';

import 'package:dna_final_pdf/homepage.dart';

void main() {
  runApp(MaterialApp(
    home: instgram(),
    debugShowCheckedModeBanner: false,
  ));
}

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
      home: instgram(),
    );
  }
}
