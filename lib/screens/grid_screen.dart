// import 'package:flutter/material.dart';

// class Grid_Screen extends StatelessWidget {
//   const Grid_Screen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       appBar: AppBar(title: Text("GridView Example")),
//       body: GridView.count(
//         crossAxisCount: 2, // 2 columns
//         crossAxisSpacing: 10, // Space between columns
//         mainAxisSpacing: 10, // Space between rows
//         children: List.generate(6, (index) { // Generate 6 items
//           return Container(
//             color: Colors.blue,
//             child: Center(
//               child: Text("Item $index", style: TextStyle(color: Colors.white, fontSize: 20)),
//             ),
//           );
//         }),
//       ),
//     );
//   }
//}


import 'package:flutter/material.dart';

class Grid_Screen extends StatelessWidget {
  final List<String> items = List.generate(20, (index) => "Item $index");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dynamic GridView")),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // 3 columns
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemCount: items.length, // Total items
        itemBuilder: (context, index) {
          return Container(
            color: Colors.orange,
            child: Center(
              child: Text(items[index], style: TextStyle(color: Colors.white, fontSize: 18)),
            ),
          );
        },
      ),
    );
  }
}
