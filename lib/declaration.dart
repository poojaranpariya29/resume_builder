import 'package:flutter/material.dart';

class Declaration extends StatefulWidget {
  const Declaration({super.key});

  @override
  State<Declaration> createState() => _DeclarationState();
}

class _DeclarationState extends State<Declaration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          "Declaration",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 50,
              color: Colors.blueAccent,
              width: double.infinity,
            ),
            dwidget(),
          ],
        ),
      ),
    );
  }
}

class dwidget extends StatefulWidget {
  const dwidget({super.key});

  @override
  State<dwidget> createState() => _dwidgetState();
}

class _dwidgetState extends State<dwidget> {
  GlobalKey<FormState> gkey = GlobalKey<FormState>();
  bool isvalied = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey, offset: Offset(0.5, 0.5), blurRadius: 10)
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Declaration",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.blueAccent),
                    ),
                    Switch(
                      value: isvalied,
                      onChanged: (value) {
                        isvalied = value;
                        setState(() {});
                      },
                      activeColor: Colors.blueAccent,
                      inactiveThumbColor: Colors.blueAccent,
                    )
                  ],
                ),
              ),
              if (isvalied)
                Column(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 230),
                        child: Image.asset(
                          "images/focus.png",
                          height: 80,
                          width: 80,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 8.0, left: 20, right: 20),
                      child: TextFormField(
                        validator: (value) {
                          var intval = int.tryParse(value ?? "");
                          if (value?.isEmpty ?? true) {
                            return "Enter valied Date";
                          } else if (intval == null) {
                            return "please Enter Date";
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                            fillColor: Colors.black12,
                            enabled: true,
                            filled: true,
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.black, width: 2)),
                            hintText: "Description",
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40.0, left: 30),
                          child: Text(
                            "Date",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: 15),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 128.0, top: 40),
                          child: Text(
                            "Place(interview\nvenue/city)",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.only(top: 18.0),
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
                          ),
                        )),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.only(top: 18.0),
                          child: TextField(
                            keyboardType: TextInputType.datetime,
                            decoration: InputDecoration(
                                fillColor: Colors.black12,
                                enabled: true,
                                filled: true,
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black, width: 2)),
                                hintText: "eg.surat",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                        )),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          bool isvalied =
                              gkey.currentState?.validate() ?? false;
                          if (isvalied) {
                            gkey.currentState?.save();
                            FocusScope.of(context).unfocus();
                          }
                        },
                        child: Text(
                          "Save",
                        )),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
