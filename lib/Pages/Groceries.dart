import 'package:flutter/material.dart';

class Groceries extends StatelessWidget {
  const Groceries({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    
    Stack(
children: [
      Container(
        child: Column(
      children: [
        Expanded(
          flex: 2,
          child: Image.asset('assets/groceries.jpg'),
        ),
       
           
              
            
      ],
    )),
]
    );
  }
}
