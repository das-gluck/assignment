import 'package:flutter/material.dart';
import 'package:greendzine_assig/dashboard.dart';

import 'home.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

  int myindex = 0;
  List screenList = [
    const DashBoard(),
    const Home(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: screenList[myindex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index){
            setState(() {
              myindex = index;
            });
          },
          currentIndex: myindex,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.person,color: Color(0xFF36A546),),label: 'Dashboard'),
            BottomNavigationBarItem(icon: Icon(Icons.home,color: Color(0xFF36A546),),label: 'home'),
          ]) ,
    );
  }
}
