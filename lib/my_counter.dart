import 'package:flutter/material.dart';
import 'package:flutter_application_1/round_box.dart';
import 'package:flutter_application_1/utils/color_manager.dart';

class MyCounter extends StatefulWidget {
  const MyCounter({Key? key}) : super(key: key);

  @override
  _MyCounterState createState() => _MyCounterState();
}

class _MyCounterState extends State<MyCounter> {
  int number = 1;

  List<Color> colors = ColorManager.colors;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
        centerTitle: true,
        backgroundColor: colors[number % colors.length],
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              '$number',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      number++;
                    });
                  },
                  child: Text(
                    '+',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (number > 0) {
                        number--;
                      }
                    });
                  },
                  child: Text(
                    '-',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                for (int i = 1; i <= number; i++)
                  RoundBox(
                    color: colors[i % colors.length],
                    text: i.toString(),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
