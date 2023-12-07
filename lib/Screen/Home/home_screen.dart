import 'package:flutter/material.dart';
import 'package:flutter_framework_all_contain/Screen/Home/bloc/home_bloc.dart';
import 'package:flutter_framework_all_contain/Screen/Home/home_nav_bar_screen.dart';
import 'package:flutter_framework_all_contain/Screen/RushLearning/rushlearn_nav_bar_screen.dart';
import 'package:flutter_framework_all_contain/Screen/page2.dart';
import 'package:flutter_framework_all_contain/Screen/page4.dart';
import 'package:flutter_framework_all_contain/Screen/page5.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});
  static const List<_BottomTab> bottomTabs = <_BottomTab>[
    _BottomTab('RushLearn', Icon(Icons.home)),
    _BottomTab('Page2', Icon(Icons.menu)),
    _BottomTab('Home', Icon(Icons.assignment)),
    _BottomTab('Page4', Icon(Icons.card_giftcard_outlined)),
    _BottomTab('Page5', Icon(Icons.person))
  ];

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int? currentIndex = 0;

  String? courseName = 'Technical';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     title: Center(
      //       child: Text(
      //         "RushLearn    ",
      //         style: TextStyle(color: Colors.white),
      //       ),
      //     ),
      //     backgroundColor: Color.fromARGB(255, 12, 19, 97)),
      body: SafeArea(
        top: false,
        child: IndexedStack(
          index: currentIndex,
          children: <Widget>[
            RushLearnNavBarScreen(),
            PageTwo(),
            HomeNavBarScreen(),
            PageFour(),
            PageFive()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex!,
        showUnselectedLabels: true,
        selectedIconTheme:
            const IconThemeData(color: Color.fromARGB(255, 48, 26, 171)),
        selectedItemColor: Color.fromARGB(255, 48, 26, 171),
        unselectedItemColor: Colors.black,
        onTap: (index) {
          // context.read<HomeBloc>().add(
          //     OnTapEvent(onTapIndex: index, courseName: 'Technical'));
          setState(() {
            currentIndex = index;
          });
        },
        items: HomeScreen.bottomTabs
            .map((e) => BottomNavigationBarItem(icon: e.icon, label: e.title))
            .toList(),
      ),
    );
  }
}

class _BottomTab {
  final String title;
  final Icon icon;

  const _BottomTab(this.title, this.icon);
}
