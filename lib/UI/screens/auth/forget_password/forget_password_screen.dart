import 'package:flutter/material.dart';

class forget_password_screen extends StatefulWidget {
  const forget_password_screen({super.key});

  @override
  State<forget_password_screen> createState() => _forget_password_screenState();
}

class _forget_password_screenState extends State<forget_password_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.blue, Colors.amberAccent
          ])
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Column(
            children: [
              Center(child: Text('Forget Password', style: TextStyle(fontSize: 35),)),
              SizedBox(height: 120,),
              Text('Please enter your email to reset the password', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      hintText: "Email",
                      hintStyle: TextStyle(fontWeight: FontWeight.bold),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {

                },
                child: Container(
                  color: Colors.blueAccent,
                  height: 50,
                  width: 160,
                  child: Text('Reset Password', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                  alignment: Alignment.center,

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
