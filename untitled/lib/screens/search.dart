import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  static const _title = Text(
    "Search",
    style: TextStyle(color: Colors.black, fontSize: 20.0),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _title,
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.lightBlueAccent,
              ))
        ],
      ),
    );
  }
}
