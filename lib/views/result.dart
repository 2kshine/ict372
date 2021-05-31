import 'dart:math';

import 'package:flutter/material.dart';
class Results extends StatefulWidget {
  final String bmi , disease;
  const Results({Key key, this.bmi,this.disease}) : super(key: key);
  @override
  _ResultsState createState() => _ResultsState();
}

class _ResultsState extends State<Results> {

  @override
  Widget build(BuildContext context) {
    Random rnd = new Random();
    int r = 60 + rnd.nextInt(70 - 60);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Results"),
        ),
        body: Column(

          children: [
            Padding(
              padding: const EdgeInsets.only(top:15.0, left:100),
              child: Container(
                child: Image.asset("assets/images/result.png" , width: 170,),
              ),
            ),
              Padding(
                padding: const EdgeInsets.only(top:18.0, left:80),
                child: Text("BMI is : " + widget.bmi, style: TextStyle(fontSize: 20),),
              ),
            widget.disease == " " ?

            Padding(
              padding: const EdgeInsets.only(top:18.0,left:80),
              child: Text("No results found try again", style: TextStyle(fontStyle: FontStyle.italic),),
            ):
            Padding(
              padding: const EdgeInsets.only(top:18.0,left:80),
              child: Text(r.toString() + "% likelyhood of " + widget.disease, style: TextStyle(fontStyle: FontStyle.italic),),
            )

          ],
        ),
      ),
    );
  }

}
