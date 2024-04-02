import 'package:flutter/material.dart';

class Project extends StatefulWidget {
  const Project({super.key});

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          "Project",
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
          Expanded(child: Projectwidget()),
        ],
      ),
    );
  }
}

class Projectwidget extends StatefulWidget {
  const Projectwidget({super.key});

  @override
  State<Projectwidget> createState() => _ProjectwidgetState();
}

class _ProjectwidgetState extends State<Projectwidget> {
  GlobalKey<FormState> gkey = GlobalKey<FormState>();
  bool c = false;
  bool cpp = false;
  bool flutter = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(
            height: 650,
            width: double.infinity,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.5, 0.5),
                      blurRadius: 10)
                ]),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 208.0, top: 30),
                  child: Text(
                    "Project Title",
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.black12,
                        enabled: true,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2)),
                        hintText: "Resume builder App"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 208.0, top: 10),
                  child: Text(
                    "Technologies",
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                ),
                CheckboxListTile(
                    value: c,
                    onChanged: (value) {
                      c = value ?? true;
                      setState(() {});
                    },
                    enabled: true,
                    controlAffinity: ListTileControlAffinity.leading,
                    title: Text(
                      "C Programming",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.blueAccent),
                    )),
                CheckboxListTile(
                    value: cpp,
                    onChanged: (value) {
                      cpp = value ?? true;
                      setState(() {});
                    },
                    enabled: true,
                    controlAffinity: ListTileControlAffinity.leading,
                    title: Text(
                      "C++",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.blueAccent),
                    )),
                CheckboxListTile(
                  value: flutter,
                  onChanged: (value) {
                    flutter = value ?? true;
                    setState(() {});
                  },
                  enabled: true,
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text(
                    "Flutter",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Colors.blueAccent),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 280.0, top: 4),
                  child: Text(
                    "Roles",
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 28, right: 28),
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.black12,
                        enabled: true,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2)),
                        hintText: "Resume builder App"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 208.0, top: 10),
                  child: Text(
                    "Technologies",
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 28, right: 28),
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.black12,
                        enabled: true,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2)),
                        hintText: "Organize team members,code analysis"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 158.0, top: 10),
                  child: Text(
                    "Project Description",
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 28, right: 28),
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.black12,
                        enabled: true,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2)),
                        hintText: "Enter your Project Description"),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Save",
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
