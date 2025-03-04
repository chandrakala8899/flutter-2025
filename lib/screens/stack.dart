import 'package:flutter/material.dart';

class StackExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stack Example")),
      body: Center(
        child: Stack(
          alignment: Alignment.center, // Center all children
          children: [
            Container(width: 200, height: 200, color: Colors.blue), // Base square
            Container(width: 150, height: 150, color: Colors.green), // Overlapping
            Container(width: 100, height: 100, color: Colors.red), // Smallest
          ],
        ),
      ),
    );
  }
}
