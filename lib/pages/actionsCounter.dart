// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ActionCounter extends StatefulWidget {
  const ActionCounter({super.key});

  @override
  State<ActionCounter> createState() => _ActionCounterState();
}

class _ActionCounterState extends State<ActionCounter> {
  // variable
  int _counter = 0;
  //method
  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  void _sum() {
    setState(() {
      _counter++;
    });
  }

  //UI(User Interface)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Please push the button to start counting!',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text(_counter.toString(),
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue, minimumSize: Size(150, 50)), 
                  onPressed: _sum, 
                  child: Text('Increment!', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)
                  ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red, minimumSize: Size(150, 50)),
                  onPressed: _resetCounter, 
                  child: Text('Reset', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold))
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
