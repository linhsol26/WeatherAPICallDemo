import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_api_demo/models/weather.dart';

class Weather extends StatelessWidget {
  const Weather({Key? key, required this.weather}) : super(key: key);
  final WeatherData weather;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(weather.name, style: new TextStyle(color: Colors.white)),
        Text(weather.main,
            style: new TextStyle(color: Colors.white, fontSize: 32.0)),
        Text('${weather.temp.toString()}°F',
            style: new TextStyle(color: Colors.white)),
        Text(
          weather.humidity.toString(),
          style: new TextStyle(color: Colors.white),
        ),
        Image.network('https://openweathermap.org/img/w/${weather.icon}.png'),
        Text(new DateFormat.yMMMd().format(weather.date),
            style: new TextStyle(color: Colors.white)),
        Text(
          new DateFormat.Hm().format(weather.date),
          style: new TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
