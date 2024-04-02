import 'package:flutter/material.dart';

class CarrierObjective extends StatefulWidget {
  const CarrierObjective({super.key});

  @override
  State<CarrierObjective> createState() => _CarrierObjectiveState();
}

class _CarrierObjectiveState extends State<CarrierObjective> {
  GlobalKey<FormState> gkey = GlobalKey<FormState>();
  TextEditingController namecontroller = TextEditingController();
  String name = "";
  bool isvalied = true;

  @override
  void initState() {
    // TODO: implement initState
    // namecontroller.text="user name";
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Carrier objective",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          Container(
            height: 50,
            width: double.infinity,
            color: Colors.blueAccent,
          ),
          Expanded(child: carrier()),
        ],
      ),
    );
  }
}

class carrier extends StatefulWidget {
  const carrier({super.key});

  @override
  State<carrier> createState() => _carrierState();
}

class _carrierState extends State<carrier> {
  GlobalKey<FormState> gkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: gkey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                height: 250,
                width: double.infinity,
                alignment: Alignment.topCenter,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.5, 0.5),
                          blurRadius: 10)
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text(
                              "Carrer Objective",
                              style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: TextFormField(
                          validator: (value) {
                            if (value?.isEmpty ?? true) {
                              return "* Enter Discription";
                            } else {
                              return null;
                            }
                          },
                          onChanged: (value) {
                            name:
                            value;
                            print("$value");
                          },
                          maxLines: 3,
                          decoration: InputDecoration(
                              hintText: "Description",
                              fillColor: Colors.black12,
                              filled: true,
                              enabled: true,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(width: 2),
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            bool isvalied =
                                gkey.currentState?.validate() ?? true;

                            if (isvalied) {
                              gkey.currentState?.save();
                              FocusScope.of(context).unfocus();
                              gkey.currentState?.save();
                            }
                          },
                          child: Text(
                            "Save",
                          ))
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 250,
              width: double.infinity,
              margin: EdgeInsets.only(top: 10, right: 10, left: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.5, 0.5),
                      blurRadius: 10)
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        "Current Designation(Experienced\nCandidate",
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: TextFormField(
                            validator: (value) {
                              if (value?.isEmpty ?? true) {
                                return " * Enter Designation";
                              } else {
                                return null;
                              }
                            },
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                              hintText: "Software Engineer",
                              fillColor: Colors.black12,
                              filled: true,
                              enabled: true,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(width: 2),
                                // border: OutlineInputBorder(
                                //     borderSide: BorderSide(color: Colors.grey),
                                //     borderRadius: BorderRadius.circular(5))),
                              ),
                            ))),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          bool isvalied = gkey.currentState?.validate() ?? true;
                          gkey.currentState?.save();

                          FocusScope.of(context).unfocus();
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
          ],
        ),
      ),
    );
  }
}
