import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
class MapPage extends StatefulWidget {
  @override
  MapPageState createState() => new MapPageState();
}
class MapPageState extends State<MapPage>{
  var points = <LatLng>[
    new LatLng(53.226234, -0.539459), //train
    new LatLng(53.228566, -0.547744), //minerva
    new LatLng(53.227329, -0.544976), //engine shed
    new LatLng(53.226809, -0.548121), //inb
    new LatLng(53.228663, -0.552925), //sports
    new LatLng(53.229990, -0.550774), //courts/cygnet
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Campus Map"),
        ),
        backgroundColor: (Color(0x00000000)),
        body: new FlutterMap(
            options: new MapOptions(
                center: new LatLng (53.226234, -0.539459), minZoom: 5.0),
            layers:[
              new TileLayerOptions(
                urlTemplate: "https://api.mapbox.com/v4/"
                    "{id}/{z}/{x}/{y}@2x.png?access_token={accessToken}",
                additionalOptions: {
                  'accessToken': 'pk.eyJ1IjoiamNyb3NzbGV5NyIsImEiOiJjanY4ZzR5eTgwNTBmM3pwNzN2ZDlwYW16In0.Gm07eYfLoL_B0fpHKmBZKA',
                  'id': 'mapbox.streets',
                },
              ),
              new MarkerLayerOptions(
                markers:[
                  new Marker(
                    width: 40.0,
                    height: 40.0,
                    point: points[0],
                    builder: (ctx) =>
                    new Container(
                      child: new IconButton(
                        icon: Icon(Icons.location_on),
                        color: Colors.red,
                        iconSize:45.0,
                        onPressed: (){
                          showModalBottomSheet(
                            context: context,
                            builder: (builder){
                              return Container(
                                  color: Color(0xFF002147),
                                  child: new Wrap(
                                    children: <Widget>[
                                      new ListTile(
                                          leading: Icon(Icons.location_on),
                                          title: Text("Lincoln Central Station"),
                                          subtitle: Text("National Rail station for the City of Lincoln. Run by East Midlands Trains, but also has LNER services.")
                                      ),
                                      new ListTile(
                                          leading: Icon(Icons.train),
                                          title: Text("Bus Station"),
                                          subtitle: Text("Lincoln Central Station is located directly opposite the City Bus Station.")
                                      ),
                                    ],

                                  )
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  new Marker(
                    width: 40.0,
                    height: 40.0,
                    point: points[1],
                    builder: (ctx) =>
                    new Container(
                      child: new IconButton(
                        icon: Icon(Icons.location_on),
                        color: Colors.red,
                        iconSize:45.0,
                        onPressed: (){
                          showModalBottomSheet(
                            context: context,
                            builder: (builder){
                              return Container(
                                  color: Color(0xFF002147),
                                  child: new Wrap(
                                    children: <Widget>[
                                      new ListTile(
                                          leading: Icon(Icons.location_on),
                                          title: Text("Minerva Building"),
                                          subtitle: Text("The 'main' university building. Home to most administrative departments, IT services, etc. Has catering facilities as well as two lecture theatres, and many seminar rooms.")
                                      ),
                                      new ListTile(
                                          leading: Icon(Icons.info_outline),
                                          title: Text("Notable Areas"),
                                          subtitle: Text("Student Services, ICT Services, Quad Catering, Jackson Lecture Theatre, Co-Op Lecture Theatre.")
                                      ),
                                    ],

                                  )
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  new Marker(
                    width: 40.0,
                    height: 40.0,
                    point: points[2],
                    builder: (ctx) =>
                    new Container(
                      child: new IconButton(
                        icon: Icon(Icons.location_on),
                        color: Colors.red,
                        iconSize:45.0,
                        onPressed: (){
                          showModalBottomSheet(
                            context: context,
                            builder: (builder){
                              return Container(
                                  color: Color(0xFF002147),
                                  child: new Wrap(
                                    children: <Widget>[
                                      new ListTile(
                                          leading: Icon(Icons.location_on),
                                          title: Text("Engine Shed"),
                                          subtitle: Text("Events venue. Used primarily by the Students Union to host various club nights and events. Currently hosts 'Quack' club night on Wednesdays and 'Anthem' on Saturdays. Also used externally for gigs and comedy nights.")
                                      ),
                                      new ListTile(
                                          leading: Icon(Icons.local_bar),
                                          title: Text("Tower Bar"),
                                          subtitle: Text("The Engine Shed is also home to Tower Bar, one of three pubs/bars run by the Students Union.")
                                      ),
                                    ],

                                  )
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  new Marker(
                    width: 40.0,
                    height: 40.0,
                    point: points[3],
                    builder: (ctx) =>
                    new Container(
                      child: new IconButton(
                        icon: Icon(Icons.location_on),
                        color: Colors.red,
                        iconSize:45.0,
                        onPressed: (){
                          showModalBottomSheet(
                            context: context,
                            builder: (builder){
                              return Container(
                                  color: Color(0xFF002147),
                                  child: new Wrap(
                                    children: <Widget>[
                                      new ListTile(
                                          leading: Icon(Icons.location_on),
                                          title: Text("Isaac Newton Building"),
                                          subtitle: Text("Extension of former Engineering Hub, used by most science departments. Has multiple computer labs as well as specialised labs for Engineering, Computer Science, Maths, Physics, etc.")
                                      ),
                                      new ListTile(
                                          leading: Icon(Icons.timer_off),
                                          title: Text("24/7"),
                                          subtitle: Text("The Isaac Newton Building is open 24 hours a day, 7 days a week once students sign an agreement. This allows them access to some labs any time of day. Perfect for late night coding sessions!")
                                      ),
                                    ],

                                  )
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  new Marker(
                    width: 40.0,
                    height: 40.0,
                    point: points[4],
                    builder: (ctx) =>
                    new Container(
                      child: new IconButton(
                        icon: Icon(Icons.location_on),
                        color: Colors.red,
                        iconSize:45.0,
                        onPressed: (){
                          showModalBottomSheet(
                            context: context,
                            builder: (builder){
                              return Container(
                                  color: Color(0xFF002147),
                                  child: new Wrap(
                                    children: <Widget>[
                                      new ListTile(
                                          leading: Icon(Icons.location_on),
                                          title: Text("Sports Centre"),
                                          subtitle: Text("University owned gym, with top-class equipment and a variety of sports rooms/courts for hire. Monthly/termly/yearly memberships available!")
                                      ),
                                      new ListTile(
                                          leading: Icon(Icons.timer_off),
                                          title: Text("Exam Hall"),
                                          subtitle: Text("The Sports Centre has a large multi-use sportshall, which during exam season will host many exams each day. Remember to bring water in with you!")
                                      ),
                                    ],

                                  )
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  new Marker(
                    width: 40.0,
                    height: 40.0,
                    point: points[5],
                    builder: (ctx) =>
                    new Container(
                      child: new IconButton(
                        icon: Icon(Icons.location_on),
                        color: Colors.red,
                        iconSize:45.0,
                        onPressed: (){
                          showModalBottomSheet(
                            context: context,
                            builder: (builder){
                              return Container(
                                  color: Color(0xFF002147),
                                  child: new Wrap(
                                    children: <Widget>[
                                      new ListTile(
                                          leading: Icon(Icons.location_on),
                                          title: Text("Lincoln Courts"),
                                          subtitle: Text("The Student Village. University owned and run accommodation, hosting flats with both en-suite and non en-suite rooms. Laundry facilities and an Amazon locker are available on site. Preference is always given to first year students.")
                                      ),
                                      new ListTile(
                                          leading: Icon(Icons.home),
                                          title: Text("Cygnet Wharf"),
                                          subtitle: Text("Also university run/managed accommodation, the newest set of accommodation with luxury en-suite rooms and kitchens poised perfectly overlooking the Brayford Pool.")
                                      ),
                                    ],

                                  )
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ],

              ),

            ]
        )
    );
  }
}