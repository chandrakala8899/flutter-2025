import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('future builder'),
      ),
      body: FutureBuilder(
          future: getFutureValue(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return Center(
                    child: Text('  Error :${snapshot.error.toString()}'));
              }

              if (snapshot.data == null) {
                return Center(child: Text('No data availabe'));
              } else if (snapshot.data!.isEmpty) {
                return Center(child: Text('Empty data'));
              }

              return Center(
                  child: SingleChildScrollView(child: Text(snapshot.data!)));
            }

            return Center(child: Text('Loading...'));
          }
          ),
    );
  }

 Future<String> getFutureValue() async {
    http.Response result =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));

    if (result.statusCode == 200) {
      String value = result.body;

      List<dynamic> response = jsonDecode(result.body.toString());
      response = [
        {
          "title": 'This is 1st title',
        },
        {'id': 'This is 2nd title'}
      ];
      return response[1]['title'];
    } else {
      return "Something went wrong";
    }
  }
}