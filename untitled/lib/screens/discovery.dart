import 'package:flutter/material.dart';
import 'package:untitled/screens/components/discovery_body.dart';

class DiscoveryPage extends StatefulWidget {
  const DiscoveryPage({Key? key}) : super(key: key);

  @override
  _DiscoveryPageState createState() => _DiscoveryPageState();
}

class _DiscoveryPageState extends State<DiscoveryPage> {
  static const _title = Text(
    "Smart Movie",
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
            icon: const Icon(Icons.menu),
            color: Colors.lightBlueAccent,
          )
        ],
        shadowColor: Colors.white,
      ),
      body: const DiscoveryBody(),
    );
  }
}
