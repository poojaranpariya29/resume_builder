import 'package:flutter/material.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({super.key});

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  GlobalKey<FormState> gkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          "Personal details",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 22),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: detail(),
    );
  }
}

class detail extends StatefulWidget {
  const detail({super.key});

  @override
  State<detail> createState() => _detailState();
}

class _detailState extends State<detail> {
  GlobalKey<FormState> gkey = GlobalKey<FormState>();
  String? maritalStatus;
  bool isen = false;
  bool ishi = false;
  bool isgu = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: gkey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.blueAccent,
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.5, 0.5),
                        blurRadius: 5)
                  ],
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 255, top: 25),
                    child: Text(
                      "DOB",
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 8.0, left: 25, right: 30),
                    child: TextFormField(
                      keyboardType: TextInputType.datetime,
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return " * please Date of Birthdate";
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
                        hintText: "DD/MM/YYYY",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 168.0, top: 0),
                    child: Text(
                      "Marital Status",
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    ),
                  ),
                  RadioListTile(
                    value: "single",
                    groupValue: maritalStatus,
                    onChanged: (value) {
                      maritalStatus = value;
                      setState(() {});
                    },
                    title: Text(
                      "Single",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.blueAccent),
                    ),
                    fillColor: MaterialStatePropertyAll(Colors.blue),
                  ),
                  RadioListTile(
                    value: "Married",
                    groupValue: maritalStatus,
                    onChanged: (value) {
                      maritalStatus = value;
                      setState(() {});
                    },
                    title: Text(
                      "Married",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.blueAccent),
                    ),
                    fillColor: MaterialStatePropertyAll(Colors.blue),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0, right: 125),
                    child: Text(
                      "Languages Known",
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    ),
                  ),
                  CheckboxListTile(
                      value: isen,
                      onChanged: (value) {
                        isen = value ?? true;
                        setState(() {});
                      },
                      enabled: true,
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text(
                        "English",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.blueAccent),
                      )),
                  CheckboxListTile(
                      value: ishi,
                      onChanged: (value) {
                        ishi = value ?? true;
                        setState(() {});
                      },
                      enabled: true,
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text(
                        "Hindi",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.blueAccent),
                      )),
                  CheckboxListTile(
                    value: isgu,
                    onChanged: (value) {
                      isgu = value ?? true;
                      setState(() {});
                    },
                    enabled: true,
                    controlAffinity: ListTileControlAffinity.leading,
                    title: Text(
                      "Gujarati",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.blueAccent),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0, right: 199),
                    child: Text(
                      "Nationality",
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 18.0, left: 20, right: 32),
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          fillColor: Colors.black12,
                          enabled: true,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 2)),
                          hintText: "indian",
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: ElevatedButton(
                        onPressed: () {
                          bool isvalid = gkey.currentState?.validate() ?? true;
                          if (isvalid) {
                            gkey.currentState?.save();
                          }
                        },
                        child: Text(
                          "Save",
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
