import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TodoListTask extends StatelessWidget {
  TodoListTask({Key? key}) : super(key: key);

  var todos = [
    {'title': 'Communication System Quiz', 'time': '10:00 ','a/p': 'AM'},
    {'title': 'OS Report', 'time': '11:00 ','a/p': 'AM'},
    {'title': 'Buy Some Stuff', 'time': '1:00 ','a/p': 'PM'},
    {'title': 'Go to The Gym', 'time': '2:00 ','a/p': 'PM'},
    {'title': 'Flutter Task', 'time': '4:00 ','a/p': 'PM'},
    {'title': 'Flutter Task بردو', 'time': '6:00 ','a/p': 'PM'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text("Todo Lost",
          style: TextStyle(
            fontFamily: GoogleFonts.raleway().fontFamily,
            fontSize: 25,fontWeight: FontWeight.w800,
            color: Colors.white
          ),),
      ),
      body: ListView.builder(
        itemCount: todos.length,
          itemBuilder: (context, index){
        return ListTile(
          title: Text(todos[index]['title']!,
            style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.white),
          ),
          subtitle: RichText(text: TextSpan(style: TextStyle(
            fontFamily: GoogleFonts.raleway().fontFamily,
          ), children: [
            TextSpan(text: todos[index]['time']!,style: TextStyle(fontSize: 14,),),
            TextSpan(text: todos[index]['a/p']!,style: TextStyle(fontSize: 16,),),
          ]),),
          trailing: IconButton(onPressed: (){
            showDialog(context: context, builder: (BuildContext context){
              return Dialog(
                child: Container(
                  padding: EdgeInsets.all(20),
                  height: 170,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Delete',
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black,
                          fontFamily: GoogleFonts.raleway().fontFamily,
                        ),
                      ),
                      Text('Are you sure you want to delete this item?',
                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Colors.grey[600],
                          fontFamily: GoogleFonts.raleway().fontFamily,
                        ),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          RichText(text: TextSpan(style: TextStyle(
                            fontFamily: GoogleFonts.raleway().fontFamily, fontSize: 18, fontWeight: FontWeight.bold
                          ), children: [
                            TextSpan(text: 'Cancel  ',style: TextStyle(color: Colors.grey[600]),),
                            TextSpan(text: 'Yes',style: TextStyle(color: Colors.redAccent,),),
                          ]),),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            });
          },
              icon: Icon(Icons.delete_forever_outlined,color: Colors.white,)),
        );
      })
    );
  }
}
