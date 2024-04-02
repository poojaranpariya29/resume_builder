import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:resume_builder/util.dart';

class Experience extends StatefulWidget {
  const Experience({super.key});

  @override
  State<Experience> createState() => _ExperienceState();
}

int page = 0;

class _ExperienceState extends State<Experience> {
  GlobalKey<FormState> gkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          "Experience",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            height: 50,
            width: double.infinity,
            color: Colors.blueAccent,
          ),
          Expanded(child: Experiencewidget()),
        ],
      ),
    );
  }
}

class Experiencewidget extends StatefulWidget {
  const Experiencewidget({super.key});

  @override
  State<Experiencewidget> createState() => _ExperiencewidgetState();
}

class _ExperiencewidgetState extends State<Experiencewidget> {
  TextEditingController namecontroller11 = TextEditingController();
  TextEditingController namecontroller6 = TextEditingController();
  TextEditingController namecontroller12 = TextEditingController();
  GlobalKey<FormState> gkey = GlobalKey<FormState>();
  String? employed;
  bool isvalied = false;

  @override
  void initState() {
    super.initState();
    namecontroller11.text = resume.company ?? "";
    namecontroller6.text = resume.university ?? "";
    namecontroller12.text = resume.roles ?? "";
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Center(
            child: Container(
              height: 650,
              width: double.infinity,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.5, 0.5),
                      blurRadius: 10)
                ],
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 28.0, right: 150),
                    child: Text(
                      "Comapany Name",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.blueAccent),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 8.0, left: 30, right: 30),
                    child: TextFormField(
                      controller: namecontroller11,
                      decoration: InputDecoration(
                          fillColor: Colors.black12,
                          enabled: true,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 2)),
                          hintText: "New Enterprise,San Francisco",
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, right: 85),
                    child: Text(
                      "School/College/Institute",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.blueAccent),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 8.0, left: 30, right: 30),
                    child: TextFormField(
                      controller: namecontroller6,
                      decoration: InputDecoration(
                          fillColor: Colors.black12,
                          enabled: true,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 2)),
                          hintText: "Quality Test Engineer",
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, right: 175),
                    child: Text(
                      "Roles(optinal)",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.blueAccent),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 8.0, left: 30, right: 30),
                    child: TextFormField(
                      controller: namecontroller12,
                      maxLines: 3,
                      decoration: InputDecoration(
                          fillColor: Colors.black12,
                          enabled: true,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 2)),
                          hintText:
                              "Working with team members to come up with new concepts and product analysis..",
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 180.0, top: 10),
                    child: Text(
                      "Employed Status",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: RadioListTile(
                            value: "Previosly Employed",
                            groupValue: employed,
                            onChanged: (value) {
                              employed = value;

                              setState(() {});
                            },
                            title: Text(
                              "Previosly Employed",
                              style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            ),
                            fillColor:
                                MaterialStatePropertyAll(Colors.blueAccent)),
                      ),
                      Expanded(
                        child: RadioListTile(
                            value: "Currently Employed",
                            groupValue: employed,
                            onChanged: (value) {
                              employed = value;

                              setState(() {});
                            },
                            title: Text(
                              "Currently Employed",
                              style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            ),
                            fillColor:
                                MaterialStatePropertyAll(Colors.blueAccent)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 18.0,
                        ),
                        child: Text(
                          "Date joined",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                            child: TextField(
                          keyboardType: TextInputType.datetime,
                          decoration: InputDecoration(
                              fillColor: Colors.black12,
                              enabled: true,
                              filled: true,
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black, width: 2)),
                              hintText: "DD/MM/YYYY",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 1.0),
                    child: ElevatedButton(
                        onPressed: () {
                          bool isvalid = gkey.currentState?.validate() ?? true;
                          if (isvalid) {
                            gkey.currentState?.save();
                            FocusScope.of(context).unfocus();
                            resume.roles = namecontroller12.text;
                            resume.company = namecontroller11.text;
                            resume.university = namecontroller6.text;
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Column(
                              children: [
                                Text(
                                  "you successfully added...",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20),
                                ),
                              ],
                            )));
                          }
                        },
                        child: Text(
                          "Save",
                        )),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
