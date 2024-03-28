import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume_builder/util.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  int index = 0;

  GlobalKey<FormState> fKey = GlobalKey<FormState>();
  String name = "";
  String email = "";
  String? phone = "";
  String? address1 = "";
  String? address2 = "";
  String? address3 = "";
  String? xFile;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController1 = TextEditingController();
  TextEditingController addressController2 = TextEditingController();
  TextEditingController addressController3 = TextEditingController();

  @override
  void initState() {
    super.initState();
    emailController.text = resume.email ?? "";
    nameController.text = resume.name ?? "";
    phoneController.text = resume.phone ?? "";
    addressController1.text = resume.email ?? "";
    addressController2.text = resume.email ?? "";
    addressController3.text = resume.email ?? "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          "Resume Workspaces",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    index = 0;
                    setState(() {});
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    color: Colors.blueAccent,
                    child: Text(
                      "Contact",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    index = 1;
                    setState(() {});
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    color: Colors.blueAccent,
                    child: Text("Photo", style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: IndexedStack(
              index: index,
              children: [
                SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 5,
                              spreadRadius: 2)
                        ]),
                    child: Form(
                      key: fKey,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.person),
                              Expanded(
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  //initialValue: resume.name,
                                  controller: nameController,
                                  decoration: InputDecoration(
                                    hintText: "Name",
                                  ),
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Please Enter your Name";
                                    } else {
                                      return null;
                                    }
                                  },
                                  onChanged: (val) {
                                    name = val;
                                  },
                                ),
                              )),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(Icons.email),
                              Expanded(
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  //initialValue: resume.email,
                                  controller: emailController,

                                  decoration: InputDecoration(
                                    labelText: "Email",
                                  ),
                                  // obscureText: true,
                                  keyboardType: TextInputType.emailAddress,
                                  keyboardAppearance: Brightness.dark,
                                  onFieldSubmitted: (value) {
                                    print("onFieldSubmitted $value");
                                  },
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Please Enter Your Email Address";
                                    } else if (!val.contains("@") ||
                                        !val.contains(".com")) {
                                      return "Please Enter Valid Email Address";
                                    } else {
                                      return null;
                                    }
                                  },
                                  onChanged: (value) {
                                    email = value;
                                  },
                                ),
                              )),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(Icons.phone_android),
                              Expanded(
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  //initialValue: resume.phone,
                                  controller: phoneController,
                                  keyboardType: TextInputType.phone,
                                  decoration:
                                      InputDecoration(hintText: "Phone"),
                                  onFieldSubmitted: (value) {
                                    print("onFieldSubmitted $value");
                                  },
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Please Enter Your phone number";
                                    } else {
                                      return null;
                                    }
                                  },
                                  onChanged: (value) {
                                    phone = value;
                                  },
                                ),
                              )),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.location_on_outlined),
                              Expanded(
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    TextFormField(
                                      //initialValue: resume.address1,
                                      controller: addressController1,
                                      decoration: InputDecoration(
                                          hintText: "Address line 1"),
                                      onFieldSubmitted: (value) {
                                        print("onFieldSubmitted $value");
                                      },
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Please Enter Your Address";
                                        } else {
                                          return null;
                                        }
                                      },
                                      onChanged: (value) {
                                        phone = value;
                                      },
                                      textInputAction: TextInputAction.next,
                                    ),
                                    TextFormField(
                                      //initialValue: resume.address2,
                                      controller: addressController2,
                                      decoration: InputDecoration(
                                          hintText: "Address line 2"),
                                      onFieldSubmitted: (value) {
                                        print("onFieldSubmitted $value");
                                      },
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Please Enter Your Address";
                                        } else {
                                          return null;
                                        }
                                      },
                                      onChanged: (value) {
                                        phone = value;
                                      },
                                      textInputAction: TextInputAction.next,
                                    ),
                                    TextFormField(
                                      // initialValue: resume.address3,
                                      controller: addressController3,
                                      decoration: InputDecoration(
                                          hintText: "Address line 3"),
                                      onFieldSubmitted: (value) {
                                        print("onFieldSubmitted $value");
                                      },
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Please Enter Your Address";
                                        } else {
                                          return null;
                                        }
                                      },
                                      onChanged: (value) {
                                        phone = value;
                                      },
                                      textInputAction: TextInputAction.next,
                                    ),
                                  ],
                                ),
                              )),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                    onPressed: () {
                                      bool isValid =
                                          fKey.currentState?.validate() ??
                                              false;

                                      if (isValid) {
                                        resume.name = name;
                                        resume.email = email;
                                        resume.phone = phone;
                                        resume.address1 = address1;
                                        resume.address2 = address2;
                                        resume.address3 = address3;
                                        fKey.currentState?.save();
                                        FocusScope.of(context).unfocus();
                                      }
                                    },
                                    child: Text("Save")),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: ElevatedButton(
                                    onPressed: () {
                                      fKey.currentState?.reset();
                                      nameController.clear();
                                      phoneController.clear();
                                      emailController.clear();
                                      addressController1.clear();
                                      addressController2.clear();
                                      addressController3.clear();
                                    },
                                    child: Text("Reset")),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  width: double.infinity,
                  height: 300,
                  padding: EdgeInsets.symmetric(vertical: 50),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey, blurRadius: 10, spreadRadius: 2)
                      ]),
                  child: Center(
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundColor: Colors.grey,
                          backgroundImage: FileImage(File(xFile ?? "")),
                        ),
                        Positioned(
                            bottom: 50,
                            right: 45,
                            child: Text(
                              "ADD",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            )),
                        Positioned(
                          bottom: 10,
                          right: 10,
                          child: InkWell(
                            onTap: () async {
                              XFile? file = await ImagePicker()
                                  .pickImage(source: ImageSource.gallery);
                              xFile = file?.path ?? "";
                              setState(() {});
                              print("image");
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.blue),
                              child: Icon(Icons.add),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
