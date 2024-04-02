import 'package:flutter/material.dart';

class Interest_Hobbies extends StatefulWidget {
  const Interest_Hobbies({super.key});

  @override
  State<Interest_Hobbies> createState() => _Interest_HobbiesState();
}

class _Interest_HobbiesState extends State<Interest_Hobbies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          "Hobbies",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w700, fontSize: 25),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(),
    );
  }
}
