import 'package:flutter/material.dart';
import 'package:flutter_application_1/my_counter.dart';

void main() {
  runApp(MaterialApp(
    home: MyCounter(),
    title: 'Counter App',
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bangladesh'),
        centerTitle: true,
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'Bangladesh, to the east of India on the Bay of Bengal, is a South Asian country marked by lush greenery and many waterways. Its Padma (Ganges), Meghna and Jamuna rivers create fertile plains, and travel by boat is common. On the southern coast, the Sundarbans, an enormous mangrove forest shared with Eastern India, is home to the royal Bengal tiger.Yes.',
          style: TextStyle(
            fontSize: 16,
          ),
          textAlign: TextAlign.justify,
        ),
      )),
    );
  }
}
