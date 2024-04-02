import 'package:flutter/material.dart';

class References extends StatefulWidget {
  const References({super.key});

  @override
  State<References> createState() => _ReferencesState();
}

class _ReferencesState extends State<References> {
  bool isvalied = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          "Refrences",
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
          Expanded(child: rfwidget()),
        ],
      ),
    );
  }
}

class rfwidget extends StatefulWidget {
  const rfwidget({super.key});

  @override
  State<rfwidget> createState() => _rfwidgetState();
}

class _rfwidgetState extends State<rfwidget> {
  GlobalKey<FormState> gkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 18),
              child: Container(
                height: 400,
                width: double.infinity,
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.5, 0.5),
                          blurRadius: 10),
                    ],
                    borderRadius: BorderRadius.circular(10)),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 168.0, top: 10),
                          child: Text(
                            "Refrence Name",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Colors.blueAccent),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 28.0, vertical: 10),
                          child: TextField(
                            decoration: InputDecoration(
                                fillColor: Colors.black12,
                                enabled: true,
                                filled: true,
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black, width: 2)),
                                hintText: "Suresh shah",
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(5))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 208.0),
                          child: Text(
                            "Designation",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Colors.blueAccent),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 28.0, vertical: 10),
                          child: TextField(
                            decoration: InputDecoration(
                                fillColor: Colors.black12,
                                enabled: true,
                                filled: true,
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black, width: 2)),
                                hintText: "Marketing Manager,ID-342332",
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(5))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 123.0),
                          child: Text(
                            "Organization/institute",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Colors.blueAccent),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 28.0, vertical: 10),
                          child: TextField(
                            decoration: InputDecoration(
                                fillColor: Colors.black12,
                                enabled: true,
                                filled: true,
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black, width: 2)),
                                hintText: "Green Energy Pvt.Ltd",
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(5))),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              bool isvalied =
                                  gkey.currentState?.validate() ?? true;
                              gkey.currentState?.save();
                            },
                            child: Text(
                              "Save",
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
