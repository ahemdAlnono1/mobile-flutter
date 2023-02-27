import 'package:flutter/material.dart';

class ChoseLocation extends StatefulWidget {
  const ChoseLocation({super.key});

  @override
  State<ChoseLocation> createState() => _ChoseLocationState();
}

class _ChoseLocationState extends State<ChoseLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text("chose loaction"),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Container(
              padding: const EdgeInsets.all(20.0),
              margin: const EdgeInsets.all(10.0),
              child: const Text("Home page in routing",
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ))),
        ));
  }
}
