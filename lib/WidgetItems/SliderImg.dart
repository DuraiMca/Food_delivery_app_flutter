import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderView extends StatefulWidget {
  List<String> list = <String>[];

  SliderView(this.list, {super.key});

  @override
  // ignore: library_private_types_in_public_api
  SliderViewState createState() => SliderViewState(list);
}

class SliderViewState extends State<SliderView> {
  int _currentIndex = 0;
  String value = '';

  List<String> sliders = <String>[];

  SliderViewState(this.sliders);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          
          onPageChanged: (index, reason) {
            setState(
              () {
                _currentIndex = index;
                value = "${_currentIndex + 1}/${sliders.length}";
                //print(value);
              },
            );
          },
        ),
        items: sliders
            .map(
              (item) => Card(
                clipBehavior: Clip.antiAlias,
                child: Container(
                  child: Stack(
                   children: [ Image.asset(
                      item,
                      fit: BoxFit.fill,
                    ),
                   
                  ],
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
