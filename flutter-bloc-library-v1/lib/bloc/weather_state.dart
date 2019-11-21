import 'package:equatable/equatable.dart';
import 'package:flutter_bloc_v1_tutorial/data/model/weather.dart';

abstract class WeatherState extends Equatable {
  const WeatherState();
}

class InitialWeatherState extends WeatherState {

  const InitialWeatherState();
  @override
  List<Object> get props => [];
}


class WeatherLoading extends WeatherState {

  const WeatherLoading();
  @override
  List<Object> get props => [];
}

class WeatherLoaded extends WeatherState {

  final Weather weatherData;
  const WeatherLoaded(this.weatherData);

  @override
  List<Object> get props => [weatherData];
}


class WeatherErrorState extends WeatherState {

  final String message;
  const WeatherErrorState(this.message);

  @override
  List<Object> get props => [message];
}


