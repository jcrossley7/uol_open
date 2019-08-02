import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:uol_open/widgets/CardItem.dart';
class LibraryPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
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
                padding: const EdgeInsets.all(8.0), child: Text('Library'),
              )
            ],
          ),
        ),
        backgroundColor: (Color(0xFFFFFFFF)),
        body: new ListView(
          children: <Widget>[
            new CardItem(text: 'Over 260k books and 44k+ journals.',
                filepath: 'lib/assets/images/gcw3.jpg'),
            new CardItem(text: '24 hour access on a daily basis nearly all year.',
                filepath: 'lib/assets/images/gcw1.jpg'),
            new CardItem(text: 'Specialist subject librarians.',
                filepath: 'lib/assets/images/gcw2.jpg'),
            new CardItem(text: 'Free phone charging facilities!',
                filepath: 'lib/assets/images/gcw4.jpg'),
            new CardItem(text: '      Freezone - De-stress activities!',
                filepath: 'lib/assets/images/gcw5.jpg'),
          ],
        )
    );
  }
}