

import 'package:flutter/material.dart';
import 'package:food_delivery_app/FirebaseFiles/googleMapUI.dart';
import 'package:food_delivery_app/WidgetItems/DashboardBody.dart';
import 'package:food_delivery_app/WidgetItems/Header.dart';
import 'package:food_delivery_app/Pages/DiningScreen.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:permission_handler/permission_handler.dart';
import '../Pages/Groceries.dart';

class UiDashBoard extends StatefulWidget {
  final FirebaseAnalytics analytics;
  static const String routeName = '/tab';
  final FirebaseAnalyticsObserver observer;
  const UiDashBoard(this.analytics, this.observer, {super.key});

  @override
  // ignore: library_private_types_in_public_api
  _UiDashBoardState createState() => _UiDashBoardState();
}


class _UiDashBoardState extends State<UiDashBoard> {
  final FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    const DashboardBody(),
    const DiningScreen(),
    const Groceries(),
    const  googlemapUI(),
  
  ];
@override
void initState() {
requestPermission();
super.initState();
}
  @override
  Widget build(BuildContext context) {
    Widget child = Container();
    
    switch (_selectedIndex) {
      case 0:
       analytics.setCurrentScreen(
      screenName: 'Dashboard',
    );
        child = _screens[0];
        break;

      case 1:
      analytics.setCurrentScreen(
      screenName: 'DiningScreen',
    );
        child = _screens[1];
        break;

      case 2:
      analytics.setCurrentScreen(
      screenName: 'GroceriesScreen',
    );
        child = _screens[2];
        break;
      case 3:
       analytics.setCurrentScreen(
      screenName: 'mapUIScreen',
    );
        child = _screens[3];
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
            BottomNavigationBarItem(
            icon: Icon(Icons.room_service_rounded),
            label: 'Orders',
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

  
  void requestPermission() async {
Map<Permission, PermissionStatus> statuses = await [
  Permission.location,

].request();

statuses.values.forEach((element) async {
  if (element.isDenied || element.isPermanentlyDenied) {
    await openAppSettings();
  }
  
});

}
}
