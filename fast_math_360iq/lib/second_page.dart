import 'package:flutter/material.dart';

class second_page extends StatefulWidget {
  const second_page({super.key});

  @override
  State<second_page> createState() => _second_pageState();
}

class _second_pageState extends State<second_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'360iq',
      home:Scaffold(
        appBar: AppBar(
          title: const Text('list'),
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
        body:Padding(padding: const EdgeInsets.all(15),
        ),

      )
    );
  }
}