import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'AppRouter.gr.dart';

@RoutePage()
class MainScreenPage extends StatefulWidget {
  const MainScreenPage({super.key});

  @override
  State<MainScreenPage> createState() => _MainScreenPageState();
}

class _MainScreenPageState extends State<MainScreenPage> {
  // int _selectedIndex = 0;
  // List<Widget> mPages = <Widget>[];

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  void initState() {
    super.initState();
    // mPages.add(PageBloc('Bloc框架'));
    // mPages.add(PageListView('列表布局'));
    // mPages.add(PageBusiness('网格布局'));
    // mPages.add(PageSchool('课程'));
    // mPages.add(PageAccount('个人中心'));
  }

  @override
  Widget build(BuildContext context) {
    print(">>>>>>>>>>>>>>>>>>>>>MainScreenPage build");
    return AutoTabsRouter(
        routes: [
          PageBlocRoute(title: 'Bloc框架'),
          PageBloc3Route(title: 'Bloc2框架'),
          PageListViewRoute(title: '列表布局'),
          PageBusinessRoute(title: '网格布局'),
          PageSchoolRoute(title: '课程'),
          PageAccountRoute(title: '个人中心'),
        ],
        transitionBuilder: (context, child, animation) => FadeTransition(
              opacity: animation,
              // the passed child is technically our animated selected-tab page
              child: child,
            ),
        builder: (context, child) {
          final tabsRouter = AutoTabsRouter.of(context);
          return Scaffold(
            body: child,
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: tabsRouter.activeIndex,
              onTap: (index) {
                // here we switch between tabs
                tabsRouter.setActiveIndex(index);
              },
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.grey,
              showUnselectedLabels: true,
              showSelectedLabels: true,
              type: BottomNavigationBarType.fixed,
              selectedLabelStyle: const TextStyle(color: Colors.black),
              unselectedLabelStyle: const TextStyle(color: Colors.grey),
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.grid_view),
                  label: 'Bloc',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.grid_view),
                  label: 'Bloc2',
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
            ),
          );
        });

    // return Scaffold(
    //   body: IndexedStack(
    //     index: _selectedIndex,
    //     children: mPages,
    //   ),
    //   bottomNavigationBar: BottomNavigationBar(
    //     items: const <BottomNavigationBarItem>[
    //       BottomNavigationBarItem(
    //         icon: Icon(Icons.grid_view),
    //         label: 'Bloc',
    //       ),
    //       BottomNavigationBarItem(
    //         icon: Icon(Icons.list_alt),
    //         label: 'List View',
    //       ),
    //       BottomNavigationBarItem(
    //         icon: Icon(Icons.grid_view),
    //         label: 'Grid View',
    //       ),
    //       BottomNavigationBarItem(
    //         icon: Icon(Icons.school_rounded),
    //         label: 'School',
    //       ),
    //       BottomNavigationBarItem(
    //         icon: Icon(Icons.account_circle_rounded),
    //         label: 'Account',
    //       ),
    //     ],
    //     currentIndex: _selectedIndex,
    //     selectedItemColor: Colors.black,
    //     unselectedItemColor: Colors.grey,
    //     showUnselectedLabels: true,
    //     showSelectedLabels: true,
    //     type: BottomNavigationBarType.fixed,
    //     selectedLabelStyle: const TextStyle(color: Colors.black),
    //     unselectedLabelStyle: const TextStyle(color: Colors.grey),
    //     onTap: _onItemTapped,
    //   ),
    // );
  }
}
