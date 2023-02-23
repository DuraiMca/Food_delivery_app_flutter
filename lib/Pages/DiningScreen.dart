import 'package:flutter/material.dart';


import '../ConstantUtilities/constants.dart';
import '../WidgetItems/BannerImages.dart';
import '../WidgetItems/GridviewImages.dart';
import '../WidgetItems/ItemTags.dart';
import '../WidgetItems/SearchWidget.dart';
import '../WidgetItems/staticImagesList.dart';



void main() {
  runApp(const DiningScreen());
}

class DiningScreen extends StatelessWidget {
  const DiningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 35, child: SearchWidget()),
                 Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(height: 20, child: ItemTags(diningtagItems)),
                  
                ),
                const Text(
                        'What are you looking for ?',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                       Column(
                  children: [
                    GridviewImages(diningPageItems, diningPageItemsName,2),
                  ],
                ),
                 const Text(
                        'Must-tries in Chennai',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                       Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: SizedBox(
                      height: 130,
                      width: double.infinity,
                      child: BannerImages(adsImages,adsTitleFor, Axis.horizontal,100)),
                ),
                const Text(
                        'Popular hubs nearby',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                     
                        
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: SizedBox(
                            height: 80,
                            child: BannerImages(mallHubs,mallHubsNames, Axis.horizontal,150)),
                        ),
                                      const StaticImagesList(),

              ],
            ),
          ),
        );
  }
  
}