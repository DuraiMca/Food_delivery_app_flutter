import 'package:flutter/material.dart';



class ItemTags extends StatelessWidget {
  List<String> tagItemsvalue = <String>[];


   ItemTags(this.tagItemsvalue,
    {super.key}
    );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: tagItemsvalue.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
                padding: const EdgeInsets.only(left: 5, right: 5),
                child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black12,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            tagItemsvalue[index],
                            style:
                                const TextStyle(backgroundColor: Colors.white),
                          ),
                        ],
                      ),
                    )));
          }),
    );
  }
}
