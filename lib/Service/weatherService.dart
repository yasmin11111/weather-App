import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class service {
  Dio dio;
  String baseURL = "https://api.weatherapi.com/v1/";
  String key = "d77728242aa347e6b94215653232209";
  service(this.dio);
  Future<weather_model> getweather({required String city}) async {
    try {
      Response responses = await dio.get(
          "https://api.weatherapi.com/v1/forecast.json?key=d77728242aa347e6b94215653232209&q=sohag&days=1");
      weather_model weather_model_obj = weather_model.fromjson(responses.data);
      return weather_model_obj;
    } on DioException catch (e) {
      //response may be null
      //?? علشان الاسترينج مش هيخزن null
      String erromess =
          e.response?.data["error"]["message"] ?? "opps there was an error";
      throw Exception(erromess);
    } //catch لو حصل ايرور زياده

    catch (e) {
      log(e.toString());
      throw Exception("opps ,error");
    }
  }
}
// import 'package:dio/dio.dart';
// import 'package:weather_app/models/weather_model.dart';

// class service {
//   Dio dio;
//   String baseURL = "https://api.weatherapi.com/v1/";
//   String key = "d77728242aa347e6b94215653232209";
//   service(this.dio);
//   Future<weather_model> getweather({required String city}) async {
//     Response responses =
//         await dio.get("$baseURL forecast.json?key=$key&q=$city&days=1");
//     if (responses.statusCode == 200) {
//       weather_model weather_model_obj = weather_model.fromjson(responses.data);
//           return weather_model_obj;

//     } else {
//       String errormessag = responses.data["error"]["message"];
//       throw Exception(errormessag);
//     }
//   }
// }
