import 'package:e_wallet/screens/contacts_screen.dart';
import 'package:e_wallet/screens/home_screen.dart';
import 'package:e_wallet/screens/account_screen.dart';
import 'package:e_wallet/screens/scan_screen.dart';
import 'package:e_wallet/screens/stat_screen.dart';
import 'package:flutter/material.dart';

class NavigationRoutes extends StatefulWidget {
  const NavigationRoutes({super.key});

  @override
  State<NavigationRoutes> createState() => _NavigationRoutesState();
}

class _NavigationRoutesState extends State<NavigationRoutes> {
  // current selected index for the bottom navs
  int _selectedIndex = 0;

  // pages to display on nav selection
  final List _pages = [
    HomeScreen(),
    StatisticsScreen(),
    ContactsScreen(),
    AccountScreen(),
  ];

  void _onPageTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color.fromARGB(255, 44, 12, 101),
            const Color.fromARGB(255, 77, 19, 178),
            // these white colors are to trick the float action buton's background
            Colors.white,
            Colors.white,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        // bottom navigation
        bottomNavigationBar: BottomAppBar(
          notchMargin: 10.0,
          shape: CircularNotchedRectangle(),
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () => _onPageTapped(0),
                  icon: ImageIcon(
                    AssetImage('icons/home.png'),
                  ),
                  color: _selectedIndex == 0 ? Colors.deepPurple : Colors.grey,
                ),
                IconButton(
                  onPressed: () => _onPageTapped(1),
                  icon: ImageIcon(
                    AssetImage('icons/stats.png'),
                  ),
                  color: _selectedIndex == 1 ? Colors.deepPurple : Colors.grey,
                ),
                IconButton(
                  onPressed: () => _onPageTapped(2),
                  icon: ImageIcon(
                    AssetImage('icons/contact.png'),
                  ),
                  color: _selectedIndex == 2 ? Colors.deepPurple : Colors.grey,
                ),
                IconButton(
                  onPressed: () => _onPageTapped(3),
                  icon: ImageIcon(AssetImage('icons/person.png')),
                  color: _selectedIndex == 3 ? Colors.deepPurple : Colors.grey,
                ),
              ],
            ),
          ),
        ),

        // float action button
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          // elevation: 0,
          backgroundColor: Color.fromARGB(255, 101, 61, 171),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => ScanScreen(),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              'icons/scan.png',
              color: Colors.white,
            ),
          ),
        ),
        body: _pages[_selectedIndex],
      ),
    );
  }
}
