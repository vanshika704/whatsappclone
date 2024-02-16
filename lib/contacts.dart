import 'package:flutter/material.dart';

class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    title: const Text(
      "WhatsApp",
      style: TextStyle(
        color: Color.fromARGB(255, 254, 255, 255),
        fontWeight: FontWeight.bold,
        fontSize: 30,
      ),
    ),
    actions: [
      IconButton(
        icon: Icon(Icons.search),
        onPressed: () {
      
        },
      ),
      IconButton(
        icon: Icon(Icons.camera_alt),
        onPressed: () {
         
        },
      ),
      PopupMenuButton(
       
        itemBuilder: (BuildContext context) {
          return [
            PopupMenuItem(
              child: Text("New group"),
             
            ),
            PopupMenuItem(
              child: Text("New broadcast"),
             
            ),
            PopupMenuItem(
              child: Text("Linked devices"),
             
            ),
            PopupMenuItem(
              child: Text("Starred messages"),
             
            ),
           PopupMenuItem(
              child: Text("Payments"),
             
            ),
            PopupMenuItem(
              child: Text("Settings"),
             
            ),
          ];
        },
      ),
    ],
    bottom: TabBar(tabs:[Tab(icon: Icon(Icons.group)),
                Tab(text: "CHATS"),
                Tab(text: "STATUS"),
                Tab(text: "CALLS"),
              ], ),
  ),
    );
  }
}