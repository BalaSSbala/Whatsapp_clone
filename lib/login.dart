import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/tab/call.dart';
import 'package:whatsapp/tab/camera.dart';
import 'package:whatsapp/tab/chats.dart';
import 'package:whatsapp/tab/status.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
    _tabController.addListener(() {
      setState(() {});
    }); // Adjust length as needed
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            'WhatsApp',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color(0xff075e54),
          actions: [
            IconButton(
              onPressed: () {
                  print("search clicked");
              },
              icon: const Icon(Icons.search, color: Colors.white),
            ),
            IconButton(
              onPressed: () {
                print("more clicked");
              },
              icon: const Icon(Icons.more_vert, color: Colors.white),
            ),
          ],
          bottom: TabBar(
            controller: _tabController,
            tabs: [
              Tab(
                icon: Icon(Icons.camera_alt, color: Colors.white),
              ),
              Tab(
                text: 'CHATS',
              ),
              Tab(
                text: 'STATUS',
              ),
              Tab(
                text: 'CALL',
              ),
            ],
            labelColor: Colors.white,
            // Selected tab text/icon color
            unselectedLabelColor: Colors.white70,
            // Unselected tab text/icon color (slightly faded white)
            indicatorColor: Colors.white,
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: new TabBarView(
          controller: _tabController,
          children: [new Camera(), new Chats(), new Status(), new Call()],
        ),
        floatingActionButton: buildFAB()
    );
  }

  //
  Widget buildFAB() {
    switch (_tabController.index) {
      case 0:
        return FloatingActionButton(
          onPressed: () {
            print("Camera action");
          },
          backgroundColor: Color(0xFF25D366),
          child: Icon(Icons.camera_alt, color: Colors.white),
        );
      case 1:
        return FloatingActionButton(
          onPressed: () {
            print("New chat");
          },
          backgroundColor: Color(0xFF25D366),
          child: Icon(Icons.message, color: Colors.white),
        );
      case 2:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(
              heroTag: 'edit',
              mini: true,
              onPressed: () {
                print("Open edit for status");
              },
              backgroundColor: Colors.grey[200],
              child: Icon(Icons.edit, color: Colors.black),
            ),
            SizedBox(height: 10),
            FloatingActionButton(
              heroTag: 'camera',
              onPressed: () {
                print("camera status");
              },
              backgroundColor: Color(0xFF25D366),
              child: Icon(Icons.camera_alt, color: Colors.white),
            ),
          ],
        );
      case 3:
        return FloatingActionButton(
          onPressed: () {
            print("Start call");
          },
          backgroundColor: Color(0xFF25D366),
          child: Icon(Icons.add_call, color: Colors.white),
        );
      default:
        return Container(); // Or null if no FAB should be shown
    }
  }
}
