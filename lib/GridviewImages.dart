import 'package:flutter/material.dart';

class GridviewImages extends StatelessWidget {
  int border;
  List<String>foodItems=<String>[];
  List<String>foodITemsname=<String>[];
   GridviewImages(this.foodItems,this.foodITemsname,this.border,{super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
    children: [
        if (border == 1) ...[
          withBorder(foodItems,foodITemsname),
        ]else if(border==2)...[
          withoutBorderFitImage(foodItems,foodITemsname),
        ] 
        
        else ...[
          withoutBorder(foodItems,foodITemsname),
        ]
    ]);
    
    
  }


  
}
Widget withBorder(List<String> foodItems,List<String> foodITemsname){
 return SizedBox(
    height: 260,
    child: GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
      itemCount: foodItems.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
        
          child:GestureDetector(
            onTap: () {},
            child: Stack(
              children: <Widget>[
                Center(
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: Image.asset(foodItems[index]),
                        flex: 2,
                      ),
                      Expanded(
                        child: Container(
                          child: Text(
                            foodITemsname[index],
                            textAlign: TextAlign.center,
                          ),
                        ),
                        flex: 2,
                      ),
                    ],
                  ),
                ),
              ],
            )));
      },
    ),
  );
}

Widget withoutBorder(List<String> foodItems,List<String> foodITemsname){
  return SizedBox(
    height: 260,
    child: GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
      itemCount: foodItems.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
            onTap: () {},
            child: Stack(
              children: <Widget>[
                Center(
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: Image.asset(foodItems[index]),
                        flex: 2,
                      ),
                      Expanded(
                        child: Container(
                          child: Text(
                            foodITemsname[index],
                            textAlign: TextAlign.center,
                          ),
                        ),
                        flex: 2,
                      ),
                    ],
                  ),
                ),
              ],
            ));
      },
    ),
  );
  
}

Widget withoutBorderFitImage(List<String> foodItems,List<String> foodITemsname){
  return SizedBox(
    height: 250,
    child: GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemCount: foodItems.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
            onTap: () {},
            child: Stack(
              children: <Widget>[
                Center(
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          child: Image.asset(foodItems[index])
                          ),
                        flex: 2,
                      ),
                      Expanded(
                        child: Container(
                          child: Text(
                            foodITemsname[index],
                            textAlign: TextAlign.center,
                          ),
                        ),
                        flex: 2,
                      ),
                    ],
                  ),
                ),
              ],
            ));
      },
    ),
  );
  
}