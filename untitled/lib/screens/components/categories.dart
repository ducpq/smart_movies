import 'package:flutter/material.dart';


class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ['Movies', 'Popular', 'Top Rated', 'Up Coming'];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),

        ));
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 8),
            child: Text(
              categories[index],
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: selectedIndex == index ? Colors.black: Colors.black38),
            ),
          ),
          Container(
            height: 2,
            width: 50,
            color: selectedIndex == index ? Colors.black38 : Colors.transparent,
          )
        ]),
      ),
    );
  }
}
