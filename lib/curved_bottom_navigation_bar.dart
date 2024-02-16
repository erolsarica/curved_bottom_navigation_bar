import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CurvedNavigation extends StatefulWidget {
  const CurvedNavigation({super.key});

  @override
  State<CurvedNavigation> createState() => _CurvedNavigationState();
}

class _CurvedNavigationState extends State<CurvedNavigation> {
  int _pageNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: Colors.blueAccent,
        color: Colors.blueAccent,
        animationDuration: const Duration(milliseconds: 200),
        items: const <Widget>[
          Icon(Icons.home, size: 30, color: Colors.white),
          Icon(Icons.add, size: 30, color: Colors.white),
          Icon(Icons.person, size: 30, color: Colors.white),
        ],
        onTap: (index) {
          setState(() {
            _pageNumber = index;
          });
        },
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Selected page: $_page', style: const TextStyle(fontSize: 30),),
            ],
          ),
        ),
      ),
    );
  }
}
