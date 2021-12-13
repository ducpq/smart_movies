import 'package:flutter/material.dart';
import 'package:untitled/screens/details/details_screen.dart';

import 'categories.dart';
import 'movie_card.dart';

class DiscoveryBody extends StatelessWidget {
  const DiscoveryBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Categories(),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
              itemCount: 10,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 0.75),
              itemBuilder: (context, index) => MovieCard(
                    press: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailScreen())),
                  )),
        )),
      ],
    );
  }
}
