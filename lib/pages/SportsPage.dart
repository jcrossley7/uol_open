import 'package:flutter/material.dart';
import 'package:uol_open/widgets/CardItem.dart';
import 'package:carousel_pro/carousel_pro.dart';


class SportsPage extends StatelessWidget{
  Widget build(BuildContext context,){
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('lib/assets/images/uniLogoLandscapeWhite.jpg',
                fit: BoxFit.contain,
                height: 32.0,
              ),
              Container(
                padding: const EdgeInsets.all(8.0), child: Text('Sports at Lincoln'),
              )
            ],
          ),
        ),
        backgroundColor: (Color(0xFFFFFFFF)),
        body: new ListView(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Text("The University of Lincoln has its own Sports Centre, located in the heart of the Brayford Campus and accessible by staff, students and alumni. "
                "The facilities offer a range of fitness classes, 2 3G 5-a-side football pitches and a synthetic sand based hockey pitch. "
                "Other additional facilities include a kitted out fitness suite, sports hall, dance studio, saunas, as well as courts for badminton, "
                "tennis, basketball, volleyball and netball. ", style: TextStyle(fontSize: 20.0, color: Colors.black,)),
            new SizedBox(
                height: 200,
                width: 300,
                child:new Carousel(
                    images:[
                      ExactAssetImage('lib/assets/images/sports1.jpg'),
                      ExactAssetImage('lib/assets/images/sports2.jpg'),
                      ExactAssetImage('lib/assets/images/sports3.jpg'),
                      ExactAssetImage('lib/assets/images/sports4.jpg'),
                      ExactAssetImage('lib/assets/images/sports5.jpg'),
                      ExactAssetImage('lib/assets/images/sports6.jpg'),
                      ExactAssetImage('lib/assets/images/sports7.jpg'),
                      ExactAssetImage('lib/assets/images/sports8.jpg'),
                    ]
                )
            ),
            new Text("The SU currently have more than 130 sports clubs and societies for student to join.  Each year thousands of students are involved, "
                "gaining essential experience in problem solving and organisational skills by becoming part of a sports committee. "
                "At a competitive level, students can participate in inter-university British Universities and Colleges Sport (BUCS) tournaments in a wide range of sports, including lacrosse, football, rowing and hockey.", style: TextStyle(fontSize: 20.0, color: Colors.black,)),
            //new Container
          ],
        )
    );
  }
}