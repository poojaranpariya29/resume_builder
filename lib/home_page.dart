import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:resume_builder/util.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.blueAccent,
        systemNavigationBarColor: Colors.blueAccent,
        systemNavigationBarDividerColor: Colors.blueAccent,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Resume Builder",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      drawer: NavigationDrawer(
        tilePadding: EdgeInsets.all(10),
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blueAccent),
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.zero,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [
                  Text(
                    "Rrsume Workspace",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Spacer(),
                  Text(
                    "Build Option",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )
                ],
              ),
            ),
          ),
          ...buildOption.map((e) {
            return Column(
              children: [
                ListTile(
                  title: Text(
                    e["name"],
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, e["page"] ?? "");
                  },
                  leading: Image.asset("images/${e["icon"]}"),
                ),
                Divider(),
              ],
            );
          }).toList()
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.blueAccent),
            child: Center(
                child: Text(
              "RESUMES",
              style: TextStyle(color: Colors.white, fontSize: 20),
            )),
          ),
          SizedBox(
              height: 100,
              width: 100,
              child: Image.asset("images/open-box.jpg")),
          Text(
            "No Resumes + Create new resume.",
            style: TextStyle(fontSize: 15, color: Colors.grey),
          )
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blueAccent,
        child: Icon(Icons.add),
      ),
      // drawerScrimColor: Colors.red,
    );
  }
}
