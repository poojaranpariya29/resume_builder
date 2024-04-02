import 'package:flutter/material.dart';

class Achievement extends StatefulWidget {
  const Achievement({super.key});

  @override
  State<Achievement> createState() => _AchievementState();
}

class _AchievementState extends State<Achievement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          "achievement",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18),
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
          acwidget(),
        ],
      ),
    );
  }
}

class acwidget extends StatefulWidget {
  const acwidget({super.key});

  @override
  State<acwidget> createState() => _acwidgetState();
}

class _acwidgetState extends State<acwidget> {
  GlobalKey<FormState> gkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Center(
            child: Container(
              height: 350,
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
                  borderRadius: BorderRadius.circular(10)),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 38.0),
                      child: Text(
                        "Enter Achievements",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Expanded(
                            child: TextField(
                          decoration: InputDecoration(
                              fillColor: Colors.black12,
                              enabled: true,
                              filled: true,
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black, width: 2)),
                              hintText: "Enter sales 17% average"),
                        )),
                        SizedBox(
                          width: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 18.0),
                          child: Icon(Icons.delete),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Expanded(
                            child: TextField(
                          decoration: InputDecoration(
                              fillColor: Colors.black12,
                              enabled: true,
                              filled: true,
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black, width: 2)),
                              hintText: "Enter sales 17% average"),
                        )),
                        SizedBox(
                          width: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 18.0),
                          child: Icon(Icons.delete),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.black12,
                            enabled: true,
                            filled: true,
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.black, width: 2)),
                            suffixIcon: Center(
                                child: Icon(
                              Icons.add,
                              size: 40,
                            )),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          gkey.currentState?.save();
                        },
                        child: Text(
                          "Save",
                        )),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
