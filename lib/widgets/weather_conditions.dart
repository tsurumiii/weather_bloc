import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import '../models/models.dart';

class WeatherConditions extends StatelessWidget {
  final WeatherCondition condition;

  WeatherConditions({Key key, @required this.condition})
      : assert(condition != null),
        super(key: key);

  @override
  Widget build(BuildContext context) => _mapConditionToImage(condition);

  Image _mapConditionToImage(WeatherCondition condition) {
    Image image;
    switch (condition) {
      case WeatherCondition.clear:
      case WeatherCondition.lightCloud:
        image =
            Image.network('https://gyazo.com/9f403d820a39f0d4fd918594afdb8b30');
        break;
      case WeatherCondition.hail:
      case WeatherCondition.snow:
      case WeatherCondition.sleet:
        image =
            Image.network('https://gyazo.com/e741d19e97fb1ff2d1747329531c8312');
        break;
      case WeatherCondition.heavyCloud:
        image =
            Image.network('https://gyazo.com/7bda4d1d14dd54488886fa141dd73dc0');
        break;
      case WeatherCondition.heavyRain:
      case WeatherCondition.lightRain:
      case WeatherCondition.showers:
        image =
            Image.network('https://gyazo.com/15c67f9ad8ed88a4a8b3700634370cc1');
        break;
      case WeatherCondition.thunderstorm:
        image =
            Image.network('https://gyazo.com/1c7a069cbfdf149a6f55abb52abf54d5');
        break;
      case WeatherCondition.unknown:
        image =
            Image.network('https://gyazo.com/9f403d820a39f0d4fd918594afdb8b30');
        break;
    }
    return image;
  }
}
