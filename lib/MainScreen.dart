import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_module/bloc/home/ui/PageBloc.dart';
import 'package:flutter_module/PageListView.dart';
import 'package:flutter_module/PageBusiness.dart';
import 'package:flutter_module/PageSchool.dart';
import 'package:flutter_module/PageAccount.dart';

class MainScreenPage extends StatefulWidget {
  const MainScreenPage({super.key, required this.title});

  final String title;

  @override
  State<MainScreenPage> createState() => _MainScreenPageState();
}

class _MainScreenPageState extends State<MainScreenPage> {
  int _counter = 0;
  int _selectedIndex = 0;
  List<Widget> mPages = <Widget>[];

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    mPages.add(PageBloc('Bloc框架'));
    mPages.add(PageListView('列表布局'));
    mPages .add(PageBusiness('网格布局'));
    mPages .add(PageSchool('课程'));
    mPages .add(PageAccount('个人中心'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: mPages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view),
            label: 'Bloc',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'List View',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view),
            label: 'Grid View',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school_rounded),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(color: Colors.black),
        unselectedLabelStyle: const TextStyle(color: Colors.grey),
        onTap: _onItemTapped,
      ),
    );
  }
}
