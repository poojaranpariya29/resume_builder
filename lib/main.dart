import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resume_builder/carrier_objective.dart';
import 'package:resume_builder/contact_page.dart';
import 'package:resume_builder/education.dart';
import 'package:resume_builder/home_page.dart';
import 'package:resume_builder/personal_detail.dart';
import 'package:resume_builder/splash_screen.dart';
import 'package:resume_builder/technical_skills.dart';

import 'Interest_hobbies.dart';
import 'achievments.dart';
import 'declaration.dart';
import 'experience.dart';
import 'projects.dart';
import 'references.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: SplashScreen(),
      initialRoute: "/",
      routes: {
        "/": (context) => SplashScreen(),
        "home": (context) => HomePage(),
        "contactInfo": (context) => ContactPage(),
        "personalDetails": (context) => PersonalDetails(),
        "carrierObjective": (context) => CarrierObjective(),
        "education": (context) => Education(),
        "experience": (context) => Experience(),
        "technicalskills": (context) => TechnicalSkill(),
        "interest/hobbies": (context) => Interest_Hobbies(),
        "projects": (context) => Project(),
        "acheivements": (context) => Achievement(),
        "references": (context) => References(),
        "declaration": (context) => Declaration(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text(
                "onUnknownRoute",
                style: TextStyle(fontSize: 50, color: Colors.black),
              ),
            ),
          ),
        );
      },
    );
  }
}
