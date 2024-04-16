import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;


class SearchRow extends StatelessWidget {
  SearchRow({Key? key});

  // Controller for the text field
  final TextEditingController _textEditingController = TextEditingController();

  Future<void> _onSearchIconClicked() async {
    // Get the current value of the text box
    final String cityName = _textEditingController.text;

    // Call the getWeatherData function with the current value
    try {
      final Map<String, dynamic> weatherData = await getWeatherData(cityName);
      // Process and use weather data as needed
      print('Weather Data: $weatherData');
    } catch (error) {
      // Handle errors
      print('Error: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: _textEditingController,
        onEditingComplete: () {},
        onChanged: (value) {},
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          prefixIcon: const Padding(
            padding: EdgeInsets.only(right: 20.0, left: 25.0),
            child: FaIcon(FontAwesomeIcons.locationDot),
          ),
          prefixIconConstraints: const BoxConstraints(),
          suffixIcon: IconButton(
            padding: const EdgeInsets.only(right: 25.0, left: 25.0),
            color: const Color(0xff0297A0),
            onPressed: _onSearchIconClicked,
            icon: const FaIcon(FontAwesomeIcons.locationPin),
          ),
        ),
      ),
    );
  }

  Future<Map<String, dynamic>> getWeatherData(String cityName) async {
    final apiKey = '030c731df0beff36d4e2495c1a8fd829';
    final apiUrl = 'https://api.openweathermap.org/data/2.5/weather';

    final response =
        await http.get(Uri.parse('$apiUrl?q=$cityName&appid=$apiKey'));

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load weather data');
    }
  }
}


