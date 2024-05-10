import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:smk_duta_kencana/component/Bar.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({
    required this.navigationShell,
    super.key,
  });

  final StatefulNavigationShell navigationShell;
  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {

  int selectedIndex = 0;

  void _goBranch(int index) {
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 30,
          flexibleSpace: Bar(),
        ),
        body: widget.navigationShell,
        bottomNavigationBar: custoBottomnavbar(context)
        );
  }

Widget custoBottomnavbar(BuildContext context){
  return NavigationBar(
          surfaceTintColor: Colors.transparent,
          backgroundColor: HexColor("#ffffff"),
          height: 60,
          selectedIndex: selectedIndex,
          onDestinationSelected: (index) {
            setState(() {
              selectedIndex = index;
            });
            _goBranch(selectedIndex);
          },
            
          destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: "Fasilitas"),
          NavigationDestination(icon: Icon(Icons.article), label: "Artikel"),
          NavigationDestination(icon: Icon(Icons.pin_drop), label: "Maps"),
          NavigationDestination(icon: Icon(Icons.supervised_user_circle_sharp), label: "Profil"),
        ]);
}

}
