import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:medical/views/result.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  var heartbeat, bloodpressure , weight , age , temprature , fever , coughing , diarrhea , headaches , height , bmi , increasethirst, increasedurination, inceasedhunger;

  String fatigue;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
       child: Form(
         key: _formKey,
         child: Column(
           children: [
             Padding(
               padding: const EdgeInsets.only(top: 18.0,),
               child: Text("Input the symptoms " , style: TextStyle(color: Colors.black, fontSize: 17, fontStyle: FontStyle.italic ),),

             ),

             Padding(
               padding: const EdgeInsets.only(top: 8.0, left: 38, right: 38 , bottom: 8),
               child: TextFormField(
                 textInputAction: TextInputAction.next,
                 onChanged: (value) {
                   setState(() =>   age = value.trim());
                 } ,
                 keyboardType: TextInputType.number ,
                 decoration: InputDecoration(
                   hintStyle: TextStyle(color: Colors.grey),
                   hintText: "Age",
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 8.0, left: 38, right: 38 , bottom: 8),
               child: TextFormField(
                 textInputAction: TextInputAction.next,
                 onChanged: (value) {
                   setState(() =>   weight = value.trim());
                 } ,
                 keyboardType: TextInputType.number ,
                 decoration: InputDecoration(
                   hintStyle: TextStyle(color: Colors.grey),
                   hintText: "Weight in kg",
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 8.0, left: 38, right: 38 , bottom: 8),
               child: TextFormField(

                 textInputAction: TextInputAction.next,
                 onChanged: (value) {
                   setState(() =>   height = value.trim());
                 } ,
                 keyboardType: TextInputType.number ,
                 decoration: InputDecoration(
                   hintStyle: TextStyle(color: Colors.grey),
                   hintText: "Height in m",
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 8.0, left: 38, right: 38 , bottom: 8),
               child: TextFormField(
                 textInputAction: TextInputAction.next,
                 onChanged: (value) {
                   setState(() =>   heartbeat = value.trim());
                 } ,
                 keyboardType: TextInputType.number ,
                 decoration: InputDecoration(
                   hintStyle: TextStyle(color: Colors.grey),
                   hintText: "Heartbeat rate in bmp",
                 ),
               ),
             ),

             Padding(
               padding: const EdgeInsets.only(top: 8.0, left: 38, right: 38 , bottom: 8),
               child: TextFormField(
                 textInputAction: TextInputAction.next,
                 onChanged: (value) {
                   setState(() =>   bloodpressure = value.trim());
                 } ,
                 keyboardType: TextInputType.number ,
                 decoration: InputDecoration(
                   hintStyle: TextStyle(color: Colors.grey),
                   hintText: "Blood Pressure",
                 ),
               ),
             ),

             Padding(
               padding: const EdgeInsets.only(top: 8.0, left: 38, right: 38 , bottom: 8),
               child: TextFormField(
                 textInputAction: TextInputAction.next,
                 onChanged: (value) {
                   setState(() =>   temprature = value.trim());
                 } ,
                 keyboardType: TextInputType.number ,
                 decoration: InputDecoration(
                   hintStyle: TextStyle(color: Colors.grey),
                   hintText: "Temperature (celsius)",
                 ),
               ),
             ),

             Padding(
               padding: const EdgeInsets.only(left:38.0, top: 10, right: 38, bottom: 20),
               child: DropdownButtonFormField(
                 value: fatigue,
                 items: ["Yes","No" ].map((label) => DropdownMenuItem(
                   child: Text(label),
                   value: label,
                 )).toList(),
                 onChanged: (value) {
                   setState(() => fatigue = value);
                 },
                 hint: Text('Fatigue', style: TextStyle(color: Colors.black),),
               ),),

             Padding(
               padding: const EdgeInsets.only(left:38.0, top: 10, right: 38, bottom: 20),
               child: DropdownButtonFormField(
                 value: fever,
                 items: ["Yes","No" ].map((label) => DropdownMenuItem(
                   child: Text(label),
                   value: label,
                 )).toList(),
                 onChanged: (value) {
                   setState(() => fever = value);
                 },
                 hint: Text('Fever', style: TextStyle(color: Colors.black),),
               ),),


             Padding(
               padding: const EdgeInsets.only(left:38.0, top: 10, right: 38, bottom: 20),
               child: DropdownButtonFormField(
                 value: coughing,
                 items: ["Yes","No" ].map((label) => DropdownMenuItem(
                   child: Text(label),
                   value: label,
                 )).toList(),
                 onChanged: (value) {
                   setState(() => coughing = value);
                 },
                 hint: Text('Coughing', style: TextStyle(color: Colors.black),),
               ),),

             Padding(
               padding: const EdgeInsets.only(left:38.0, top: 10, right: 38, bottom: 20),
               child: DropdownButtonFormField(
                 value: diarrhea,
                 items: ["Yes","No" ].map((label) => DropdownMenuItem(
                   child: Text(label),
                   value: label,
                 )).toList(),
                 onChanged: (value) {
                   setState(() => diarrhea = value);
                 },
                 hint: Text('Diarrhea', style: TextStyle(color: Colors.black),),
               ),),

             Padding(
               padding: const EdgeInsets.only(left:38.0, top: 10, right: 38, bottom: 20),
               child: DropdownButtonFormField(
                 value: inceasedhunger,
                 items: ["Yes","No" ].map((label) => DropdownMenuItem(
                   child: Text(label),
                   value: label,
                 )).toList(),
                 onChanged: (value) {
                   setState(() => inceasedhunger = value);
                 },
                 hint: Text('Increased hunger', style: TextStyle(color: Colors.black),),
               ),),

             Padding(
               padding: const EdgeInsets.only(left:38.0, top: 10, right: 38, bottom: 20),
               child: DropdownButtonFormField(
                 value: increasedurination,
                 items: ["Yes","No" ].map((label) => DropdownMenuItem(
                   child: Text(label),
                   value: label,
                 )).toList(),
                 onChanged: (value) {
                   setState(() => increasedurination = value);
                 },
                 hint: Text('Increased Urination', style: TextStyle(color: Colors.black),),
               ),),

             Padding(
               padding: const EdgeInsets.only(left:38.0, top: 10, right: 38, bottom: 20),
               child: DropdownButtonFormField(
                 value: increasethirst,
                 items: ["Yes","No" ].map((label) => DropdownMenuItem(
                   child: Text(label),
                   value: label,
                 )).toList(),
                 onChanged: (value) {
                   setState(() => increasethirst = value);
                 },
                 hint: Text('Increased Thirst', style: TextStyle(color: Colors.black),),
               ),),

             Padding(
               padding: const EdgeInsets.only(left:38.0, top: 10, right: 38, bottom: 20),
               child: DropdownButtonFormField(
                 value: headaches,
                 items: ["Yes","No" ].map((label) => DropdownMenuItem(
                   child: Text(label),
                   value: label,
                 )).toList(),
                 onChanged: (value) {
                   setState(() => headaches = value);
                 },
                 hint: Text('Headache', style: TextStyle(color: Colors.black),),
               ),),

             Padding(
               padding: const EdgeInsets.only(top:28.0, bottom: 45),
               child: RaisedButton(
                   child: Padding(
                     padding: const EdgeInsets.only(
                         top: 18.0, bottom: 18.0, left: 50.0, right: 50.0),
                     child: Text("Predict" ,style: TextStyle(color: Colors.white),),
                   ),
                   color: Colors.blue,

                   onPressed: () async{
                     var intweight = double.parse(weight).round();
                     var intheight = double.parse(height).round();
                    print(intheight);
                    print(intweight);

                    var  newbmi = intweight / (intheight * intheight);
                    setState(() {
                      bmi = newbmi.toStringAsFixed(2);
                    });

                    var disease;
                     var inttemprature = int.parse(temprature);
                     var intheartbeat = int.parse(heartbeat);
                     var intbloodpreassure = int.parse(bloodpressure);

                     if(fever == "Yes" &&  inttemprature >= 38 && fatigue == "Yes" && diarrhea == "Yes" && headaches == "Yes"){
                       disease = "Malaria";
                     }else if(  fever == "Yes" && fatigue == "Yes" && diarrhea == "Yes" && coughing == "Yes" ){
                       disease = "Pnemonia";
                     }else if(increasedurination == "Yes" && increasethirst == "Yes" && inceasedhunger == "Yes" ){
                       disease = "Diabetes";
                     }else if(fever == "Yes" &&  inttemprature >= 38 && fatigue == "Yes" && coughing == "Yes"){
                       disease = "Tuberculosis";
                     }else if(intheartbeat >= 45 &&  intbloodpreassure >= 110 ){
                       disease = "Heart Disease";
                     }else if(intheartbeat >= 45 &&  intbloodpreassure >= 110  && headaches == "Yes"){
                       disease = "Hyper tension";
                     }else if(headaches == "Yes" && diarrhea=="Yes" && coughing == "Yes" && fever== "Yes" && inttemprature >= 39){
                       disease = "Typhoid";
                     }else if(diarrhea == "Yes" && intheartbeat >= 45 && intbloodpreassure <= 100){
                       disease = "Cholera";
                     }else if(fatigue == "Yes" && intheartbeat >= 45 && headaches == "Yes"){
                       disease = "Anameia";
                     }


                     var  uid =  (await FirebaseAuth.instance.currentUser()).uid;
                     final DocumentReference documentReference = await Firestore.instance.collection('tests').add({
                     'uid': "" ,
                     });

                     final String itemId= documentReference.documentID;
                     Firestore.instance.collection('tests').document(itemId).setData({
                     "uid" :  uid ,
                     "documentid" : itemId ,
                     "age" : age,
                     "weight": weight,
                     "height": height ,
                     "heartbeat" : heartbeat,
                     'bloodpressure': bloodpressure ,
                     "temprature" : temprature,
                       "fatigue" : fatigue,
                       "fever" : fever,
                       "coughing" : coughing,
                       "diarrhea" : diarrhea,
                       "headache" : headaches,
                       "bmi" : bmi,
                       "disease" : disease
                     });

                    var bmitostring = bmi.toString();
                     Navigator.push(context, MaterialPageRoute(builder: (context) => Results(
                         bmi : bmitostring,
                       disease : disease
                     )),
                     );

                   }),
             )

           ],
         ),
       ),
      ),
    );
  }
}