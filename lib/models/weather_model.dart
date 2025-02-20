// ignore_for_file: non_constant_identifier_names

import 'dart:ffi';

class weather_model {
  String city_name;
  String data;
  String? image;
  double temp;
  double mintemp;
  double maxtemp;
  String condition;
  weather_model(
      {required this.city_name,
      required this.condition,
      required this.data,
      this.image,
      required this.maxtemp,
      required this.mintemp,
      required this.temp});
  factory weather_model.fromjson(json) {
    return weather_model(
        image: json["forecast"]["forecastday"][0]["day"]["condition"]["icon"],
        city_name: json["location"]["name"],
        condition: json["forecast"]["forecastday"][0]["day"]["condition"]
            ["text"],
        data: json["current"]["last_updated"],
        maxtemp: json["forecast"]["forecastday"][0]["day"]["maxtemp_c"],
        mintemp: json["forecast"]["forecastday"][0]["day"]["mintemp_c"],
        temp: json["forecast"]["forecastday"][0]["day"]["avgtemp_c"]);
  }
}
