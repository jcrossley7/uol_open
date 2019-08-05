import 'package:flutter/material.dart';
import 'package:uol_open/widgets/CardItem.dart';
import 'package:carousel_pro/carousel_pro.dart';

class SUPage extends StatelessWidget{
  Widget build(BuildContext context,){
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xFFC32021),
          title: Image.asset('lib/assets/images/su-logo-white.png',
                fit: BoxFit.contain,
                height: 40.0)

          ),
      body: new ListView(
        children: <Widget>[
          new Text("Lincoln Students' Union is at the heart of the social lifestyle "
              "of students at University of Lincoln. We run a variety of events from club nights to quiz nights, charity fundraisers, food challenges, and many more! "
              "We run 3 Venues, Engine Shed, The Swan, and The Barge, each a different setting for our students to relax and have fun!"
              "The Union offer a variety of services to help support students and also deal with sports and societies!", style: Theme.of(context).textTheme.body2,),
        new SizedBox(
            height: 200,
            width: 300,
            child:new Carousel(
                images:[
                  new CardItem(text: 'The Barge Cocktail Bar, located in Brayford Pool', filepath: 'lib/assets/images/barge1.jpg'),
                  new CardItem(text: 'All aboard for luxury cocktails and food!', filepath: 'lib/assets/images/barge2.jpg'),
                  new CardItem(text: 'A wide selection of spirits!', filepath:'lib/assets/images/barge3.jpg'),
                ]
            )
        ),
        new SizedBox(
            height: 200,
            width: 300,
            child:new Carousel(
                images:[
                  new CardItem(text: 'The Swan, Student Pub.', filepath: 'lib/assets/images/swan2.jpg'),
                  new CardItem(text: 'The best of British pub food, with drinks to match', filepath: 'lib/assets/images/swan1.jpg'),
                  new CardItem(text: 'Cosy seating for breakfast, lunch and dinner!', filepath:'lib/assets/images/swan3.jpg'),
                ]
            )
        ),
        new SizedBox(
            height: 200,
            width: 300,
            child:new Carousel(
                images:[
                  new CardItem(text: 'Tower Bar, Student Bar.', filepath: 'lib/assets/images/towerbar1.jpg'),
                  new CardItem(text: 'Live sports on show every day and some great drinks too!', filepath: 'lib/assets/images/towerbar2.jpg'),
                  new CardItem(text: 'A wide selection of food!', filepath:'lib/assets/images/towerbar3.jpg'),
                ]
            )
        ),
        new SizedBox(
            height: 200,
            width: 300,
            child:new Carousel(
                images:[
                  new CardItem(text: 'Engine Shed, concert venue.', filepath: 'lib/assets/images/shed1.jpg'),
                  new CardItem(text: 'Live music with renowned as well as indie artists, comedy shows and more!', filepath: 'lib/assets/images/shed2.jpg'),
                ]
            )
        ),

        ],
      ),
        );
  }
}