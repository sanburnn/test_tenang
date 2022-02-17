import 'package:flutter/material.dart';
import 'package:test_tenang/screens/homepage.dart';
import 'package:test_tenang/screens/inbox.dart';
import 'package:test_tenang/screens/profile.dart';
import 'package:test_tenang/screens/appointment.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  PageController _pageController = PageController(initialPage: 0);

  final _bottomNavigationBarItems = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    BottomNavigationBarItem(
        icon: Icon(Icons.app_registration_sharp), label: "Appointment"),
    BottomNavigationBarItem(icon: Icon(Icons.inbox_rounded), label: "Inbox"),
    BottomNavigationBarItem(
        icon: Icon(Icons.account_circle_rounded), label: "Profile")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        children: [Home(), Appointment(), Inbox(), Users()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: _bottomNavigationBarItems,
        selectedItemColor: Color(0xff4A80FF),
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          _pageController.animateToPage(index,
              duration: Duration(milliseconds: 500), curve: Curves.ease);
        },
      ),
    );
  }
}



//Home(), JualSampah(), Transaksi(), Profile()