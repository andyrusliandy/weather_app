import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/models/weather.dart';
import '/services/api_helper.dart';

final searchWeatherProvider = FutureProvider.family<Weather, String>((ref, cityName) {
  return ApiHelper.getWeatherByCityName(cityName: cityName);
});
