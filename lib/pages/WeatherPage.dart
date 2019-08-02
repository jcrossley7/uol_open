import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:location/location.dart';
import 'package:uol_open/widgets/Weather.dart';
import 'package:uol_open/widgets/WeatherItem.dart';
import 'package:uol_open/models/WeatherData.dart';
import 'package:uol_open/models/ForecastData.dart';
import 'package:flutter/services.dart';
import 'dart:async';
class WeatherPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new WeatherPageState();
  }
}
class WeatherPageState extends State<WeatherPage> {
  bool isLoading = false;
  WeatherData weatherData;
  ForecastData forecastData;
  Location _location = new Location();
  String error;

  @override
  void initState() {
    super.initState();
    loadWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text("Weather"),

        ),

        body: Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("lib/assets/images/cathedral.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: weatherData != null ? Weather(
                              weather: weatherData) : Container(),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: isLoading ? CircularProgressIndicator(
                            strokeWidth: 2.0,
                            valueColor: new AlwaysStoppedAnimation(
                                Color(0xFFFFFFFF)),
                          ) : IconButton(
                            icon: new Icon(Icons.refresh),
                            tooltip: 'Refresh',
                            onPressed: loadWeather,
                            color: (Color(0xFFFFFFFF)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 200.0,
                        child: forecastData != null ? ListView.builder(
                            itemCount: forecastData.list.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) =>
                                WeatherItem(
                                    weather: forecastData.list.elementAt(index))
                        ) : Container(),
                      ),
                    ),
                  )
                ]
            )
        )
    );
  }

  loadWeather() async {
    setState(() {
      isLoading = true;
    });
    LocationData currentLocation;
    try {
      currentLocation = await _location.getLocation();
      error = null;
    }
    on PlatformException catch (e) {
      if (e.code == 'PERMISSION_DENIED') {
        error = 'Permission denied';
      }
      else if (e.code == 'PERMISSION_DENIED_NEVER_ASK') {
        error = 'Permission denied, please enable from app settings';
      }
      currentLocation = null;
      error = 'No location found';
    }
    if (currentLocation != null) {
      final lat = currentLocation.latitude;
      final lon = currentLocation.longitude;
      final weatherResponse = await http.get(
          'https://api.openweathermap.org/data/2.5/weather?APPID=91096280b45382e0896f9ae94fa4e59e&units=metric&lat=${lat
              .toString()}&lon=${lon.toString()}');
      final forecastResponse = await http.get(
          'https://api.openweathermap.org/data/2.5/forecast?APPID=91096280b45382e0896f9ae94fa4e59e&units=metric&lat=${lat
              .toString()}&lon=${lon.toString()}');
      if (weatherResponse.statusCode == 200 &&
          forecastResponse.statusCode == 200) {
        return setState(() {
          weatherData =
          new WeatherData.fromJson(jsonDecode(weatherResponse.body));
          forecastData =
          new ForecastData.fromJson(jsonDecode(forecastResponse.body));
          isLoading = false;
        });
      }
    }
    setState(() {
      isLoading = false;
    });
  }
}