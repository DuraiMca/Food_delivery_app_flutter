import 'package:flutter/material.dart';

class StaticListimg extends StatelessWidget {
  String urlImg;
   StaticListimg(this.urlImg,{super.key});

  @override
  Widget build(BuildContext context) {
    
            return 
             Card(
               clipBehavior: Clip.antiAlias,

               
                
                shadowColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
             
                  child: Container(

                                 
                    child: Stack(
                        children: [
                      Image.asset(
                       urlImg,
                       height: MediaQuery.of(context).size.height,
                       width: MediaQuery.of(context).size.width,
                        fit: BoxFit.fill,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            const Align(
                              alignment: Alignment.topRight,
                              child: Icon(
                                
                                Icons.favorite_border,color: Colors.white,
                                ),
                                
                                
                              ),
                          ],
                        ),
                          
                      ),
                        ],
                    ),
                  ),

             
                borderOnForeground: true,
              );
            
    
  }
}