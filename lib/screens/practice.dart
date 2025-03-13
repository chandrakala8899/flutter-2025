import 'package:flutter/material.dart';

class HomePageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.home,
          //color: Colors.black,
        ),
       backgroundColor: Colors.lime,
        title:Text('Neo App'),
      ),
     
      body: Container(
        color: Colors.blue,
      ),
     // drawer: Drawer(),
     endDrawer:Drawer(),
    floatingActionButton: FloatingActionButton(onPressed:() {},
    child: Icon(Icons.favorite ,color: Colors.red,),

    ),
    bottomNavigationBar:  BottomNavigationBar(
      items: [BottomNavigationBarItem(icon:Icon (Icons.home),label: 'Home'),
      BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings')
      ]
    
    ),
      );
  
  }
}
