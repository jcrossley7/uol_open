import 'package:flutter/material.dart';
import 'package:uol_open/widgets/CardItem.dart';
import 'package:carousel_pro/carousel_pro.dart';

class AboutPage extends StatelessWidget{
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
                padding: const EdgeInsets.all(8.0), child: Text('About the Uni'),
              )
            ],
          ),
        ),
        backgroundColor: (Color(0xFFFFFFFF)),
        body: new ListView(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Text("The University of Lincoln is a public research university established with its current name in 2001. "
                "The Guardian recently ranked the University at an all time high of 17th in its league table. "
                "Situated on the Brayford Pool and near the city centre, the university offers a wide range of degree options. "
                "Investment into the campus has resulted in new state of the art equipment, new buildings and much more. "
                "The University accommodated many expert staff as well as world-class academics and research teams. "
                "For life beyond campus, many companies have unique relations with Lincoln, and alumni retain access "
                "to employment help services, the library, as well as a masters degree scholarship in the form of tuition discounts!"
                "", style: TextStyle(fontSize: 20.0, color: Colors.black,)),
            new CardItem(text: 'Waterfront location, a short walk from Lincoln City Centre',
            filepath: 'lib/assets/images/aboutuni1.jpg'),
            new CardItem(text: '£200 million investment, with a further £130 million to follow',
                filepath: 'lib/assets/images/aboutuni2.jpg'),
            new CardItem(text: 'Award winning campus, with all amenities in 1 location',
                filepath: 'lib/assets/images/aboutuni3.jpg'),
            new Text('#UniLincolnPOTW', style: TextStyle(fontSize: 36.0, fontWeight: FontWeight.w600, color: Colors.black,)),
            new SizedBox(
                height: 200,
                width: 300,
                child:new Carousel(
                    images:[
                      ExactAssetImage('lib/assets/images/potw1.jpg'),
                      ExactAssetImage('lib/assets/images/potw2.jpg'),
                      ExactAssetImage('lib/assets/images/potw3.jpg'),
                      ExactAssetImage('lib/assets/images/potw4.jpg'),
                      ExactAssetImage('lib/assets/images/potw5.jpg'),
                      ExactAssetImage('lib/assets/images/potw6.jpg')
                    ]
                )
            )
            //new Container
          ],
        )
    );
  }
}