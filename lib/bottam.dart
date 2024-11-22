import 'package:flutter/material.dart';
import 'package:whatsapp/Communities.dart';
import 'package:whatsapp/call.dart';
import 'package:whatsapp/chats.dart';
import 'package:whatsapp/update.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int selectedIndex = 0;

  final List<Widget> screens = [
    Chat(),
    Update(),
    Communitiescreen(),
    Callscreen(),
  ];
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          onTap: onItemTapped,
          selectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Chat"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), label: "Update"),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: "Communities"),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Call"),
        
          ]),
    );
  }
}
