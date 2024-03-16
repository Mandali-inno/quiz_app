import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/Admin/add_quiz.dart';
import 'package:quiz_app/pages/home.dart';

class AdminLogin extends StatefulWidget {
  const AdminLogin({super.key});

  @override
  State<AdminLogin> createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  TextEditingController user_name_controller = new TextEditingController();
  TextEditingController password_controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 2),
                padding: EdgeInsets.only(top: 45.0, left: 20, right: 20),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color.fromARGB(255, 53, 51, 51), Colors.black],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight),
                    borderRadius: BorderRadius.vertical(
                        top: Radius.elliptical(
                            MediaQuery.of(context).size.width, 110))),
              ),
              Container(
                margin: EdgeInsets.only(left: 30, right: 30, top: 30),
                child: Form(
                  child: Column(
                    children: [
                      Text(
                        "Let's start with Admin",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Material(
                        elevation: 3.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          height: MediaQuery.of(context).size.height,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    left: 20, top: 5, bottom: 5),
                                margin: EdgeInsets.symmetric(horizontal: 20),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color.fromARGB(255, 160, 160, 147),
                                    ),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: TextFormField(
                                    controller: user_name_controller,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please Enter Username';
                                      }
                                    },
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Username',
                                        hintStyle: TextStyle(
                                            color: Color.fromARGB(
                                                255, 160, 160, 147))),
                                  ),
                                ),
                              ),SizedBox(
                                height: 20,
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    left: 20, top: 5, bottom: 5),
                                margin: EdgeInsets.symmetric(horizontal: 20),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color.fromARGB(255, 160, 160, 147),
                                    ),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: TextFormField(
                                    controller: password_controller,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please Enter Password';
                                      }
                                    },
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Password',
                                        hintStyle: TextStyle(
                                            color: Color.fromARGB(
                                                255, 160, 160, 147))),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                      GestureDetector(
                        onTap: (){
                          LoginAdmin();
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                        ),
                      )
                            ],
                          ),
                        ),
                      ),
                      
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  LoginAdmin(){
    FirebaseFirestore.instance.collection("Admin").get().then((snapshot){
      snapshot.docs.forEach((result) { 
        if(result.data()['id']!=user_name_controller.text.trim()){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Your id is not correct'),));
        }
        else if(result.data()['password']!=password_controller.text.trim()){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Your password is not correct'),));
        }
        else{
          Router route = MaterialPageRoute(builder: (context)=> AddQuiz()) as Router;
            Navigator.pushReplacement(context, route as Route<Object?>);
        }
      });
    });
  }
}
