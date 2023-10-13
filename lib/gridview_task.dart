import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridTask extends StatelessWidget {
  GridTask({Key? key}) : super(key: key);

  var photos = [
    'assets/images/gridImg1.jpg',
    'assets/images/gridImg2.jpg',
    'assets/images/gridImg3.jpg',
    'assets/images/gridImg1.jpg',
    'assets/images/gridImg2.jpg',
    'assets/images/gridImg3.jpg',
    'assets/images/gridImg1.jpg',
    'assets/images/gridImg2.jpg',
    'assets/images/gridImg3.jpg',
    'assets/images/gridImg1.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          Center(child: Text("Gallery", style: TextStyle(
              fontSize: 25,color: Colors.grey,
            fontWeight: FontWeight.bold,
            fontFamily: GoogleFonts.nunito().fontFamily,
          )),),
          Expanded(
            child: GridView.builder(
                shrinkWrap: true,
                itemCount: photos.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                ),
                itemBuilder: (context, index){
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(photos[index],),
                          fit: BoxFit.fitHeight,
                      ),
                        borderRadius: BorderRadius.circular(30)
                    ),
                    //child: Image.asset(photos[index],fit: BoxFit.fitHeight),
                  );
                }),
          )
        ],
      )
      ),
    );
  }
}
