import 'package:flutter/material.dart';
import 'package:flutter_framework_all_contain/Screen/page1.dart';
import 'package:flutter_framework_all_contain/Screen/page2.dart';
import 'package:flutter_framework_all_contain/Screen/page3.dart';
import 'package:flutter_framework_all_contain/Screen/page4.dart';
import 'package:flutter_framework_all_contain/Screen/page5.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  int? currentIndex = 0;
  static const List<_BottomTab> bottomTabs = <_BottomTab>[
    _BottomTab('Page1', Icon(Icons.home)),
    _BottomTab('Page2', Icon(Icons.menu)),
    _BottomTab('Page3', Icon(Icons.assignment)),
    _BottomTab('Page4', Icon(Icons.card_giftcard_outlined)),
    _BottomTab('Page5', Icon(Icons.person))
  ];
  String? courseName = 'Technical';
  @override
  Widget build(BuildContext context) {
    // context.read<ProfileBloc>().add(UserBack());
    // context
    //     .read<HomeBloc>()
    //     .add(OnTapEvent(onTapIndex: currentIndex, courseName: 'Technical'));

    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: SafeArea(
        top: false,
        child: IndexedStack(
          index: currentIndex,
          children: <Widget>[
            PageOne(),
            PageTwo(),
            PageThree(),
            PageFour(),
            PageFive()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex!,
        showUnselectedLabels: true,
        selectedIconTheme: const IconThemeData(color: Colors.orange),
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.black,
        onTap: (index) {
          // context.read<HomeBloc>().add(
          //     OnTapEvent(onTapIndex: index, courseName: 'Technical'));
        },
        items: bottomTabs
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
