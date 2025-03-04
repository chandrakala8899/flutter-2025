
import 'package:flutter/material.dart';

class HomePageScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      leading: Icon(Icons.arrow_back,color: Colors.black,),
     ), 


body: Padding(
  padding: const EdgeInsets.all(16.0),
  child: Form(
    child: Column(
      spacing: 20,
       children: [
      Center(child: Text('Sign Up',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),)),
    
      TextFormField(
        decoration: InputDecoration(

          labelText: '  FullName',
           hintText: 'Enter Your Name',
           border: OutlineInputBorder()
        ),
        
      ),
      Container(
        width: double.infinity,
        child: ElevatedButton(
          onPressed:  () {
            // onPressed: _isValidForm ? _submitForm : null;
            },
           child: 
           Text('Register')),
      ),    
       ]
    ),
  ),
),
  
    );
  }
  
  void setState(Null Function() param0) {}
}