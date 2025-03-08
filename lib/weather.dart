import 'dart:convert'; // Para convertir la respuesta JSON
import 'package:http/http.dart' as http;

// Definir una clase para manejar la respuesta del clima
class Weather {
  final double temperature;
  final String description;
  final int humidity;

  Weather({
    required this.temperature,
    required this.description,
    required this.humidity,
  });

  // Método para convertir los datos JSON en un objeto Weather
  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      temperature: json['main']['temp'].toDouble(),
      description: json['weather'][0]['description'],
      humidity: json['main']['humidity'],
    );
  }
}

// Función para obtener el clima de una ciudad
Future<Weather> fetchWeather(String city, String apiKey) async {
  final url =
      'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey&units=metric';

  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    // Si la solicitud es exitosa, procesamos la respuesta JSON
    return Weather.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load weather');
  }
}
