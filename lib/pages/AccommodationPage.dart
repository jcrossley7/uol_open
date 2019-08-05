import 'package:flutter/material.dart';
import 'package:uol_open/widgets/CardItem.dart';
import 'package:carousel_pro/carousel_pro.dart';


class AccommodationPage extends StatelessWidget{
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
                padding: const EdgeInsets.all(8.0), child: Text('Accommodation'),
              )
            ],
          ),
        ),
        backgroundColor: (Color(0xFFFFFFFF)),
        body: new ListView(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Text("The University manages several of its own on-campus accommodation as well as having ties with external companies. "
            "On-campus accommodation comprises of Courts, and Cygnet Wharf, forming the Student Village. En suite rooms are available however are limited. "
                "A communal laundrette is available at One Campus Way building, alongside an Amazon locker. "
                "Each room has 24 hour internet access, and each flat has a fully fitted kitchen. Specialist disabled access rooms are available also. "
                "The site is secure with 24/7 campus security and there is also the option for bicycle storage. "
                "In total there are 1037 rooms in Courts. ", style: TextStyle(fontSize: 20.0, color: Colors.black,)),
            new SizedBox(
                height: 200,
                width: 300,
                child:new Carousel(
                    images:[
                      ExactAssetImage('lib/assets/images/courts3.jpg'),
                      ExactAssetImage('lib/assets/images/courts1.jpg'),
                      ExactAssetImage('lib/assets/images/courts2.jpg'),
                    ]
                )
            ),
            new Text("Cygnet Wharf is the newest addition to the Student Village. Spread across three buildings the complex is just seconds away from campus. "
            "Cygnet offers the traditional halls experience in a more modern environment. 442 furnished bedrooms, across flats housing between 5 and 12 students. "
            "Some flats have disabled access rooms, and each flat has a fully fitted kitchen/lounge area. "
            "As with Courts, Cygnet also has 24 hour internet access, 24 hour security, a communal laundrette, and bicycle storage. ", style: TextStyle(fontSize: 20.0, color: Colors.black,)),
            new SizedBox(
                height: 200,
                width: 300,
                child:new Carousel(
                    images:[
                      ExactAssetImage('lib/assets/images/cygnet3.jpg'),
                      ExactAssetImage('lib/assets/images/cygnet1.jpg'),
                      ExactAssetImage('lib/assets/images/cygnet2.jpg'),
                    ]
                )
            ),
            new Text("Away from campus many other companies offer the halls experience that are affliated with the University, offering properties at: "
            "Park Court, iQ Pavilions, Junxion, Gateway, Danesgate, Brayford Quay, Hayes Wharf, Brayford Court, Viking House. ", style: TextStyle(fontSize: 20.0, color: Colors.black,)),
          ],
        )
    );
  }
}