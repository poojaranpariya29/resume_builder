import 'package:flutter/material.dart';

import 'package:resume_builder/util.dart';

class TechnicalSkill extends StatefulWidget {
  const TechnicalSkill({super.key});

  @override
  State<TechnicalSkill> createState() => _TechnicalSkillState();
}

class _TechnicalSkillState extends State<TechnicalSkill> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          "Technical Skills",
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(child: skill()),
        ],
      ),
    );
  }
}

class skill extends StatefulWidget {
  const skill({super.key});

  @override
  State<skill> createState() => _skillState();
}

List<TextEditingController> skilllist = [];

class _skillState extends State<skill> {
  TextEditingController namecontroller10 = TextEditingController();
  GlobalKey<FormState> gkey = GlobalKey<FormState>();
  bool isvalied = false;
  String technicalskill = "";
  @override
  void initState() {
    namecontroller10.text = resume.technicalskill ?? "";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: double.infinity,
          color: Colors.blueAccent,
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(color: Colors.grey, blurRadius: 10),
          ]),
          child: Column(
            children: [
              Text(
                "Enter your skills",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              Form(
                key: gkey,
                child: Column(
                  children: skilllist.map(
                    (e) {
                      return Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 18.0),
                              child: TextFormField(
                                validator: (value) {
                                  if (isvalied) {
                                    return "please Enter your Skills";
                                  } else {
                                    return null;
                                  }
                                },
                                decoration: InputDecoration(
                                    hintText: "C programming,web Technical"),
                                controller: e,
                              ),
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                skilllist.remove(e);
                                setState(() {});
                              },
                              icon: Icon(Icons.delete))
                        ],
                      );
                    },
                  ).toList(),
                ),
              ),
              InkWell(
                onTap: () {
                  skilllist.add(TextEditingController());
                  setState(() {});
                },
                child: Container(
                  width: double.infinity,
                  height: 30,
                  color: Colors.grey,
                  margin: EdgeInsets.all(10),
                  child: Icon(Icons.add),
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    skilllist.forEach((element) {
                      print(element.text);
                      gkey.currentState?.save();
                      FocusScope.of(context).unfocus();
                      resume.technicalskill = namecontroller10.text;
                    });
                  },
                  child: Text("Save"),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
