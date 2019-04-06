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
        image = Image.network(
            'https://github.com/felangel/bloc/blob/master/examples/flutter_weather/assets/clear.png?raw=true');
        break;
      case WeatherCondition.hail:
      case WeatherCondition.snow:
      case WeatherCondition.sleet:
        image = Image.network(
            'https://github.com/felangel/bloc/blob/master/examples/flutter_weather/assets/snow.png?raw=true');
        break;
      case WeatherCondition.heavyCloud:
        image = Image.network(
            'https://github.com/felangel/bloc/blob/master/examples/flutter_weather/assets/cloudy.png?raw=true');
        break;
      case WeatherCondition.heavyRain:
      case WeatherCondition.lightRain:
      case WeatherCondition.showers:
        image = Image.network(
            'https://github.com/felangel/bloc/blob/master/examples/flutter_weather/assets/rainy.png?raw=true');
        break;
      case WeatherCondition.thunderstorm:
        image = Image.network(
            'https://github.com/felangel/bloc/blob/master/examples/flutter_weather/assets/thunderstorm.png?raw=true');
        break;
      case WeatherCondition.unknown:
        image = Image.network(
            'https://github.com/felangel/bloc/blob/master/examples/flutter_weather/assets/clear.png?raw=true');
        break;
    }
    return image;
  }
}
