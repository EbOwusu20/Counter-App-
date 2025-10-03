import 'package:flutter/material.dart';

class Counterpage extends StatefulWidget {
  const Counterpage({super.key});

  @override
  State<Counterpage> createState() => _CounterpageState();
}

class _CounterpageState extends State<Counterpage> {
  //  variable
  int _incrementCounter = 0;

  // increment method
  void _counter() {
    setState(() {
      _incrementCounter++;
    });
  }

  // Decrement Method
  void _dCounter() {
    setState(() {
      _incrementCounter--;
    });
  }

//  UI (User Interface)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("My AppBar"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You Pushed the button this times :"),
            Text(
              _incrementCounter.toString(),
              style: TextStyle(fontSize: 40),
            ),
            ElevatedButton(
                onPressed: _counter, child: Text("Push this button!")),
            ElevatedButton(
                onPressed: _dCounter,
                child: Text("Push this button to go down!"))
          ],
        ),
      ),
    );
  }
}
