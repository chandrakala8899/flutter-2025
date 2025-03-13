import 'package:flutter/material.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
bool obxsecure =true;

  
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: Text(
          'Login',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w100, fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          spacing: 16,
          children: [
            
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('username'),
                  hintText: 'enter username'),
            ),
               
                  TextFormField(
                    decoration: InputDecoration(
                    
                        border: OutlineInputBorder(),
                        labelText:'password',
                        hintText: 'enter password',

                      suffixIcon: IconButton(onPressed: () {
                        setState(() {
                          obxsecure =!obxsecure;
                        });
                      }, 
                      icon: Icon(obxsecure? Icons.visibility: Icons.visibility_off
                      ),
                      ),
                     ),
                      
                  ),

                ],
        ),
      ),
    );
  }
}
