import 'package:flutter/material.dart';

void main(){
  runApp(const Header());
}

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
          backgroundColor: Colors.transparent,
          bottomOpacity: 0.0,
          elevation: 0.0,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: const [
                Icon(
                  Icons.location_pin,
                  color: Colors.red,
                ),
                Text(
                  "Home",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black,
                ),
              ]),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "b10 church road,Mugapair east ",
                  style: TextStyle(
                    color: Colors.black26,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: ExactAssetImage('assets/user.jpeg'),
              ),
            ),
          ],
        );
  }
}