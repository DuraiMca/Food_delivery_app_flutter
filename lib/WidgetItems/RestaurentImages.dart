import 'package:flutter/material.dart';

import '../FirebaseFiles/samplemap.dart';

class RestaurentImages extends StatelessWidget {
  List<String> hotelImages = <String>[];
  List<String> hotelNames = <String>[];
  List<String> hotelRatings = <String>[];
  List<String> hotelDistance = <String>[];
  List<String> hotelkm = <String>[];

  RestaurentImages(this.hotelImages, this.hotelNames, this.hotelRatings,
      this.hotelDistance, this.hotelkm,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: hotelImages.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              clipBehavior: Clip.antiAlias,
              child:GestureDetector(
                onTap: () {
                  

                },
                child: Stack(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 5, left: 5),
                     
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                height: MediaQuery.of(context).size.height,
                                width: MediaQuery.of(context).size.width / 5,
                                child: Image.asset(hotelImages[index],fit: BoxFit.fill),
                              ),
                              flex: 4,
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        hotelNames[index],
                                      ),
                                      Container(
                                             margin: const EdgeInsets.only(left: 5.0, right: 5.0,top: 5.0),
                                        decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(4)),
                                            color: Colors.green),
                                        child: Text(
                                          style: const TextStyle(
                                              color: Colors.white),
                                          hotelRatings[index],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const Icon(
                                        Icons.watch_later,
                                        size: 10,
                                        color: Colors.brown,
                                      ),
                                      Text(hotelDistance[index]),
                                      Text(hotelkm[index]),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Icon(
                                        Icons.currency_rupee_rounded,
                                        size: 10,
                                        color: Colors.red,
                                      ),
                                      Text("200 for one"),
                                    ],
                                  ),
                                ],
                              ),
                              flex: 4,
                            ),
                          ],
                        ),
                      ),
                   
                  ],
                )));
          }),
    );
  }
}
