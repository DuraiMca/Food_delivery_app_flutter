import 'package:flutter/material.dart';

import '../ConstantUtilities/constants.dart';
import 'BannerImages.dart';
import 'GridviewImages.dart';
import 'ItemTags.dart';
import 'RestaurentImages.dart';
import 'SearchWidget.dart';
import 'SliderImg.dart';


import 'staticImagesList.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 35, child: SearchWidget()),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(height: 20, child: ItemTags(tagItems)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: SizedBox(
                      height: 100,
                      width: double.infinity,
                      child: BannerImages(adsImages, adsTitleFor,Axis.horizontal,80)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        homeTitle,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                    height: 150,
                  width: double.infinity,
                     child:
                      SliderView(banerImages),
                   ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Looking for something?',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    GridviewImages(foodITems, foodITemsname,0),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Featured restaurants',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: SizedBox(
                      height: 150,
                      child: RestaurentImages(hotelImages, hotelNames,
                          hotelRatings, hotelDistance, hotelkm)),
                ),
                const StaticImagesList(),
              ],
            ),
          ),
        );
  }
}
