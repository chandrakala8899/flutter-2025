import 'package:flutter/material.dart';

class SimpleListView extends StatelessWidget {
  final List<String> items = List.generate(20, (index) => "Item $index");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListView Example")),
      body: ListView.builder(
        itemCount: items.length, // Number of items
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.star),
            title: Text(items[index]),
            subtitle: Text("Subtitle $index"),
          );
        },
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class ScrollableColumn extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("SingleChildScrollView Example")),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Text("Welcome", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
//             Image.network("https://via.placeholder.com/150"), // Sample Image
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: TextField(decoration: InputDecoration(labelText: "Enter Name")),
//             ),
//             ElevatedButton(onPressed: () {}, child: Text("Submit")),
//             SizedBox(height: 20),
//             Text("More Content Below..."),
//           ],
//         ),
//       ),
//     );
//   }
// }
