import 'package:flutter/material.dart';

class StaticListimg extends StatefulWidget {

   String urlImg;
   StaticListimg(this.urlImg,{super.key});

  

  @override
  // ignore: library_private_types_in_public_api
  _StaticListimgState createState() => _StaticListimgState(urlImg);
}

class _StaticListimgState extends State<StaticListimg> {
     String urlImg;
bool _isPressed = false;

  _StaticListimgState(this. urlImg);

 

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shadowColor: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Stack(
        children: [
          Image.asset(
            urlImg,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    
                    onPressed: () {

                     setState(() {
                      setState(() => _isPressed = !_isPressed);
                     });
                      
                    }, icon:  Icon(Icons.favorite_sharp,
                   color: _isPressed ? Colors.red : Colors.white))
                  
                ),
              ],
            ),
          ),
        ],
      ),
      borderOnForeground: true,
    );
  
  
  }
}
