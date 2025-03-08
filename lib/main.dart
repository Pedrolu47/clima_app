import 'package:flutter/material.dart';
import 'weather.dart'; // Asegúrate de importar el archivo que creamos

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clima App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WeatherScreen(),
    );
  }
}

class WeatherScreen extends StatefulWidget {
  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  late Future<Weather> futureWeather;
  final TextEditingController cityController = TextEditingController();
  final String apiKey = 'Tu_api_key'; // Reemplaza con tu API key

  @override
  void initState() {
    super.initState();
    futureWeather = fetchWeather('Osaka', apiKey); // Ciudad por defecto
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clima App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: cityController,
              decoration: InputDecoration(
                labelText: 'Introduce una ciudad',
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    setState(() {
                      futureWeather = fetchWeather(cityController.text, apiKey);
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
            FutureBuilder<Weather>(
              future: futureWeather,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                } else if (snapshot.hasData) {
                  final weather = snapshot.data!;
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Temperatura: ${weather.temperature}°C',
                          style: TextStyle(fontSize: 24)),
                      Text('Descripción: ${weather.description}',
                          style: TextStyle(fontSize: 18)),
                      Text('Humedad: ${weather.humidity}%',
                          style: TextStyle(fontSize: 18)),
                    ],
                  );
                }
                return Center(child: Text('No hay datos disponibles'));
              },
            ),
          ],
        ),
      ),
    );
  }
}

