import 'package:flutter/material.dart';
import 'package:food_delivery_app/DashboardBody.dart';
import 'package:food_delivery_app/Header.dart';
import 'package:food_delivery_app/Pages/DiningScreen.dart';

import 'Pages/Groceries.dart';

class UiDashBoard extends StatefulWidget {
  const UiDashBoard({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _UiDashBoardState createState() => _UiDashBoardState();
}

class _UiDashBoardState extends State<UiDashBoard> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget child = Container();

    switch (_selectedIndex) {
      case 0:
        child = const DashboardBody();
        break;

      case 1:
        child = const DiningScreen();
        break;
      case 2:
      child=const Groceries();
      break;
    }
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50), child: Header()),
      body: SizedBox.expand(child: child),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.pink,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.delivery_dining,
             
            ),
            label: 'Delivery',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dining),
            label: 'Dining',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_grocery_store),
            label: 'Grocery',
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
