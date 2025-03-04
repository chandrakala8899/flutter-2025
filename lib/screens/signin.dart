import 'package:flutter/material.dart';
import 'package:flutterdemo/screens/signup.dart';

class SignIn_Screen extends StatelessWidget {
  const SignIn_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue.shade500, Colors.blue.shade600],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(30),
                  width: 400,
                  height:300,
                  child: Center(
                    child: Image.asset("assets/image.png"),
                  
                  ),
                ),
                SizedBox(height: 10),
                Center(
                    child: Text(
                  'Sign In',
                  style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),
                ),
                ),
                  const SizedBox(height: 20),
                _buildLabel("Email"),
                _buildTextField(Icons.email, "Enter Your email"),
                _buildLabel("Password"),
                _buildTextField(Icons.email, "Enter Your password",isPassword: true),
                  const SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 14, horizontal: 80),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "REGISTER",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                  const SizedBox(height: 20),
                Center(
                    child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => SignUp_Screen()));
                  },
                  child: const Text(
                    'Dont have a account? sign up',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500,color: Colors.white),
                  ),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLabel(String text) {
    return Padding(
      padding: EdgeInsets.only(top: 10,bottom: 4),
      child: 
             Text(
            text,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 18),
          ),
          );
   
  }

  Widget _buildTextField(IconData icon, String hintText,
      {bool isPassword = false}) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
              child: TextFormField(
            obscureText: isPassword,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(color: Colors.white),
              prefix: Icon(icon, color: Colors.white),
              filled: true,
              fillColor: Colors.white.withOpacity(0.2),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
            ),
          )
          );
  }
}
