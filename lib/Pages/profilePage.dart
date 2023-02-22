import 'package:flutter/material.dart';

class profilePage extends StatelessWidget {
  const profilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 5,
              width: double.infinity,
              child: Card(
                  elevation: 10,
                  color: Colors.white,
                  clipBehavior: Clip.antiAlias,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text(
                                    "Durai",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text(
                                    "duraidur52@gmail.com",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text("view activity",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                        color: Colors.red,
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.green,
                          radius: 60.0,
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(80),
                              child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Image.asset("assets/user.jpeg"))),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
          ),
          Row(
            children: [
              Expanded(
                  flex: 2,
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height / 8,
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      color: Colors.white,
                      
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.favorite_border,
                            color: Colors.black,
                          ),
                          const Text("Likes")
                        ],
                      ),
                    ),
                  )),
              Expanded(
                  flex: 2,
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height / 8,
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                     color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.payment,
                             color: Colors.black,
                          ),
                           const Text("Payments")
                        ],
                      ),
                    ),
                  )),
              Expanded(
                  flex: 2,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 8,
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.settings,
                           color: Colors.black,
                          ),
                           const Text("Settings")
                        ],
                      ),
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
