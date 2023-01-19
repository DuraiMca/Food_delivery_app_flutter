import 'package:flutter/material.dart';
import 'DashBoard.dart';

void main() {
  runApp(  const MainScreen());
}
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UiDashBoard(),);
      
    
  }
}

