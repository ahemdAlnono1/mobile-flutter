import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List categories = ["Hang bag", "Jewllery", "Foot wear", "Dresses"];
  int selectetIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: SizedBox(
          height: 25,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectetIndex = index;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 23.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(categories[index],
                          style: TextStyle(
                              color: selectetIndex == index
                                  ? Colors.black
                                  : Colors.black38,
                              fontWeight: FontWeight.bold)),
                      Container(
                        margin: const EdgeInsets.only(top: 5.0),
                        height: 2,
                        width: 30,
                        color: selectetIndex == index
                            ? Colors.black
                            : Colors.transparent,
                      )
                    ],
                  ),
                ),
              );
            },
          )),
    );
  }
}
