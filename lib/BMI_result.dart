import 'package:flutter/material.dart';

class Results extends StatelessWidget {

  final double result;
  Results({required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("BMI Results",style: TextStyle(fontSize: 20),),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.deepPurple[50],
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Normal",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green),),
            SizedBox(height: 70,),
            Text("${result.round()}",style: TextStyle(fontSize: 110,fontWeight: FontWeight.w900,),),
            SizedBox(height: 70,),
            Text("You have a normal body weight,\n Great job!",textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
                  color: Colors.grey,),),
          ],
        ),
      ),
    );
  }
}