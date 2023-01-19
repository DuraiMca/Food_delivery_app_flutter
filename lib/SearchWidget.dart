import 'package:flutter/material.dart';

import 'constants.dart';

void main(){
  runApp(const SearchWidget());
}

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
      ),
      child: const TextField(
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              color: Colors.red,
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.vertical(
                    top: Radius.circular(10), bottom: Radius.circular(10))),
            hintText: searchHint,
            contentPadding: EdgeInsets.all(10),
            suffixIcon: Icon(
              Icons.keyboard_voice_rounded,
              color: Colors.red,
            )),
      ),
    );
  }
  
}