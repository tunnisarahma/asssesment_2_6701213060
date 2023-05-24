import 'package:flutter/material.dart';

class SecondLayout extends StatelessWidget{
  final List<String> data;
  //final String kiriman;
  const SecondLayout({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(data[0]),

      ),
    );
  }
}