import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BannerImages extends StatelessWidget {
  List<String> banerImages = <String>[];
  List<String> banerImagesText = <String>[];
  Axis direction;
  double width;

  BannerImages(this.banerImages,this.banerImagesText, this.direction, this.width, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: direction,
            itemCount: banerImages.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                clipBehavior: Clip.antiAlias,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset(banerImages[index],
                         
                          fit: BoxFit.fill),
                    ),
                   
               
                        
                              Align(
                                alignment: Alignment.bottomCenter,
                               
                                  child: Text(
                                   banerImagesText[index],
                                   
                                    style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                  ),),
                                ),
                            
                          
                         
               
             
                  ],
                ),
              );
            }));
  }
}
