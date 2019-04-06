import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import '../models/models.dart';

@immutable
abstract class WeatherState extends Equatable {
  WeatherState([List props = const []]) : super(props);
}

class WeatherEmpty extends WeatherState {} // ユーザーがまだ都市を選択していないために気象データがない初期状態

class WeatherLoading extends WeatherState {} // 特定の都市の天気を取得している間に発生する状態

class WeatherLoaded extends WeatherState {
  final Weather weather;

  WeatherLoaded({@required this.weather})
      : assert(weather != null),
        super([weather]);
} // 特定の都市の天気をうまく取得できた場合に発生する状態

class WeatherError extends WeatherState {} // 特定の都市の天気を取得できなかった場合に発生する状態。
