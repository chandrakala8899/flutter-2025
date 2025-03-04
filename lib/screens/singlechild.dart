import 'package:flutter/material.dart';

class ScrollableColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SingleChildScrollView Example")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Welcome", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Image.network("https://via.placeholder.com/150"), // Sample Image
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(decoration: InputDecoration(labelText: "Enter Name")),
            ),
            ElevatedButton(onPressed: () {}, child: Text("Submit")),
            SizedBox(height: 20),
            Text("More Content Below..."),
          ],
        ),
      ),
    );
  }
}
