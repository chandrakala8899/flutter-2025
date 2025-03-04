import 'package:flutter/material.dart';

class PositionedExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Positioned Example")),
      body: Center(
        child: Stack(
          children: [
            Container(width: 300, height: 300, color: Colors.blue), // Background
            Positioned(
              top: 50, left: 50, // Positioned at (50, 50)
              child: Container(width: 100, height: 100, color: Colors.green),
            ),
            Positioned(
              bottom: 20, right: 20, // Positioned at bottom-right
              child: Container(width: 80, height: 80, color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
