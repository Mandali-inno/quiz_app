import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  const Question({super.key});

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.all(15),
          child: Column(children: [
            Row(
              children: [
                
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(35)),
                  child: Icon(Icons.arrow_back),                  
                ),
                SizedBox(width: 90,),
                Text(
                        "Sports",
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
              ],
            ),
            Container(
              // height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("images/image1.png", height: 200, width: MediaQuery.of(context).size.width, fit: BoxFit.cover,)),
            ),
            SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(border: Border.all(color: Colors.black), borderRadius: BorderRadius.circular(20)),
              child:Text(
                        "Christiano Ronaldo",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,),
                      ), 
            ),
            SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(border: Border.all(color: Colors.black), borderRadius: BorderRadius.circular(20)),
              child:Text(
                        "Leonel Messin",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,),
                      ), 
            ),
            SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(border: Border.all(color: Colors.black), borderRadius: BorderRadius.circular(20)),
              child:Text(
                        "Neymar",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,),
                      ), 
            ),
            SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(border: Border.all(color: Colors.black), borderRadius: BorderRadius.circular(20)),
              child:Text(
                        "Demacus",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,),
                      ), 
            ),
          ]),
        ),
      ),
    );
  }
}