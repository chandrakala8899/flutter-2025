import 'package:flutter/material.dart';
import 'package:flutterdemo/fp--2025/loginscreen.dart';
import 'package:flutterdemo/screens/grid_screen.dart';
import 'package:flutterdemo/screens/listview.dart';
import 'package:flutterdemo/screens/signin.dart';
import 'package:flutterdemo/screens/signup.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class Homepage_screen extends StatelessWidget {
  const Homepage_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        centerTitle: true,
      ),
      drawer:EndDrawerButton(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
             // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 16,
        
            children: [
              ElevatedButton(
                  onPressed: () {
                 Get.to(() => Loginscreen());
                  },
                  child: Text(
                    'Login',
                  ),
                  ),
                  
              ElevatedButton(
                  onPressed: () {
                    Get.to(()=> SignUp_Screen());
                  },
                  child: Text(
                    'Signup',
                  ),
                  ),
                   ElevatedButton(
                  onPressed: () {
                    Get.to(() => SignIn_Screen());
                  },
                  child: Text(
                    'Sigin',
                  ),
                  ),
                   ElevatedButton(
                  onPressed: () {
                    Get.to(() => SimpleListView());
                  },
                  child: Text(
                    'List',
                  ),
                  ),
                   ElevatedButton(
                  onPressed: () {
                    Get.to(() => Grid_Screen());
                  },
                  child: Text(
                    'Grid',
                  ),
                  ),         
            ],
          ),
        ),
      ),
    );
  }
}
