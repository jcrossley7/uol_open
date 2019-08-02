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
                padding: const EdgeInsets.all(8.0), child: Text('About the Uni'),
              )
            ],
          ),
        ),
        backgroundColor: (Color(0xFFFFFFFF)),
        body: new ListView(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new CardItem(text: 'Waterfront location, a short walk from the heart of Lincoln City Centre',
                filepath: 'lib/assets/images/inb.jpg'),
            new CardItem(text: '£200 million investment, with a further £130 million to follow',
                filepath: 'lib/assets/images/inb.jpg'),
            new CardItem(text: 'Award winning campus, with all amenities in 1 location',
                filepath: 'lib/assets/images/inb.jpg'),
            new Text('#UniLincolnPOTW', style: TextStyle(fontSize: 36.0, fontWeight: FontWeight.w600, color: Colors.black,)),
            new SizedBox(
                height: 200,
                width: 300,
                child:new Carousel(
                    images:[
                      ExactAssetImage('lib/assets/images/gcw1.jpg'),
                      ExactAssetImage('lib/assets/images/gcw2.jpg'),
                      ExactAssetImage('lib/assets/images/gcw3.jpg'),
                      ExactAssetImage('lib/assets/images/gcw4.jpg'),
                      ExactAssetImage('lib/assets/images/gcw5.jpg'),
                    ]
                )
            )
            //new Container
          ],
        )
    );
  }
}