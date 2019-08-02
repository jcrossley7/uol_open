import 'package:flutter/material.dart';

class CardItem extends StatelessWidget{
  CardItem({
    Key key,
    @required String text,
    @required String filepath,
  }) : _textInfo = text, _filepath = filepath, super(key: key);
  final String _textInfo;
  final String _filepath;
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            SizedBox(
                height: 180.0,
                child: Stack(
                    children: <Widget>[
                      Positioned.fill(
                        child:Image.asset('$_filepath', fit:BoxFit.cover),
                      ),
                      Positioned(
                        bottom: 16.0,
                        left: 16.0,
                        right: 16.0,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          alignment: Alignment.topLeft,
                          child: Text('$_textInfo',
                            style: Theme.of(context)
                                .textTheme
                                .body2
                                .copyWith(color:Colors.white),
                          ),
                        ),
                      )
                    ]
                )
            )
          ],
        )
    );
  }
}
