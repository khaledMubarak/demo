import 'package:flutter/material.dart';
import 'package:islami_app/hadeth_page.dart';
import 'package:islami_app/quran_page.dart';
import 'package:islami_app/radio_page.dart';
import 'package:islami_app/settings_page.dart';
import 'package:islami_app/sobha_page.dart';

class HomeScreen extends StatefulWidget {
  static const String RouteName = "/Home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> Pages = [
    QuranPage(),
    HadethPage(),
    SobhaPage(),
    RadioPage(),
    SettingsPage()
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/default_bg.png"),
              fit: BoxFit.fill)),
      child: Scaffold(

        appBar: AppBar(
          title: const Text("اسلامي"),

        ),
        body: Pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(

            currentIndex: currentIndex,
            onTap: (index) {
              currentIndex = index;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/icon_quran.png")),
                  label: "Quran"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/icon_hadeth.png")),
                  label: "Hadeth"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/icon_sebha.png")),
                  label: "Sebha"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/icon_radio.png")),
                  label: "Radio"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "Settings")
            ]),
      ),
    );
  }
}
