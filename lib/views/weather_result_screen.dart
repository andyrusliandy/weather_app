import 'package:flutter/material.dart';

class WeatherResultScreen extends StatelessWidget {
  final String cityName;

  const WeatherResultScreen({super.key, required this.cityName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather in $cityName'),
      ),
      body: Center(
        child: Text(
          'Weather info for "$cityName" will be shown here.',
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
