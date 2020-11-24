import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main () {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
List<Color> clrs = [ Colors.green, Colors.grey,Colors.blue ,Colors.green, Colors.grey,Colors.blue];
List<String> title = [ "Design Basic" , "Concept and  Model" ,
  "Concept and  Model" ,"Design Basic" , "Concept and  Model" , "Design Basic" ,];
List<String> subtitle = [ "Design Basic" , "Concept and  Model" , "Concept and  Model" ,"Design Basic" , "Concept and  Model" ,"Design Basic" ,];



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
           debugShowCheckedModeBanner: false,
        home: Scaffold(
         backgroundColor: Colors.grey,
          body: SingleChildScrollView(
            child: SafeArea(

                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(left:20.0,
                    right: 20,
                    top: 20,
                    bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [

                        Row(

                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("Find Your\nMatches Course " , style: TextStyle(fontSize: 25,
                                        fontWeight:FontWeight.w800,  color: Colors.black),),


                                  ],
                                ),

                                Container(
                                  height: 50,
                                  width: 50,
                                  child: Image.asset("img/selfi1.jpeg" , fit: BoxFit.cover,),
                                  decoration: BoxDecoration(

                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.orange
                                  ),
                                )
                              ],
                            ),
                        SizedBox(height: 10,),
                        Text("10 Courses available" , style: TextStyle(fontSize: 15, color: Colors.grey),),

                        SizedBox(height: 20,),
                        ListviewExtend(),

                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: clrs.length,
                           itemBuilder: (context, index){

                            return  Design (
                                clr :clrs[index],
                              title: title[index],
                              subtitle: subtitle[index],

                            ) ;
                           }

                        ),


                       
                      ],
                    ),
                  ),
                ),

            ),
          ),
        ),


    );

  }
}

class ListviewExtend extends StatelessWidget {

List <String> image = [
  "img/bot7.png" ,
  "img/bot8.png",
  "img/bot9.jpg"
    ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: image.length ,

          itemBuilder: (context, index)
          {
            return Listimage(
              img: image[index],

            );
          }
      ),
    );
  }
}

class Listimage extends StatefulWidget {
  Listimage({
    this.img , this.img2 , this.img3
});
final String img;
  final String img2;
  final String img3;
  @override
  _ListimageState createState() => _ListimageState();
}

class _ListimageState extends State<Listimage> {
  @override
  Widget build(BuildContext context) {
    return

    Container(
        height: 100,
        width: 100,
        child: Image.asset(widget.img));

        

  }
}


class Design extends StatefulWidget {
  Design({
    this.subtitle  , this.title , this.clr
});
  final Color clr;
  final String title;
  final String subtitle;

  @override
  _DesignState createState() => _DesignState();
}

class _DesignState extends State<Design> {
  @override
  Widget build(BuildContext context) {
    return Column(
   children: [
      Row(
        children: [
          Container(
            height: 50,
            width: 60,
            decoration: BoxDecoration(
                color: widget.clr,
                borderRadius: BorderRadius.circular(10)
            ),
            child: Icon(Icons.video_collection),
          ),
          SizedBox(width: 10,),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.title , style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800,),),
              Text(widget.subtitle , style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800, color: Colors.grey),),
            ],
          ),


        ],
      ),
     SizedBox(height: 20,)

   ],
    );
  }
}

