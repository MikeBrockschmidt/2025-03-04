void main() {
// Liste hat garantiert immer 3 Elemente

  List<Map<String, double?>> weatherData = [
    {'temp': 5.3, 'rain': 0.9, 'wind': null},
    {'temp': 4.5, 'rain': null, 'wind': 16.8},
    {'temp': null, 'rain': 3.8, 'wind': null},
  ];

  // print(weatherData);

// Erstelle leere Liste für Temperaturen

  // List<double?> temps = [];
  // if (weatherData[2]['temp'] == null) {
  //   temps.add(0);
  // }
  // temps.add(weatherData[0]['temp']);

  // Zähle alle `temp`-Werte, die nicht null und nicht 0 sind

  List<double> temps = [];
  List<double> rainData = [];
  List<double> windData = [];

  int count = weatherData
      .where((entry) => entry['temp'] != null && entry['temp'] != 0)
      .length;

  int countRain = weatherData
      .where((entry) => entry['rain'] != null && entry['rain'] != 0)
      .length;

  int countWind = weatherData
      .where((entry) => entry['wind'] != null && entry['wind'] != 0)
      .length;

  // print('Anzahl gültiger temp-Werte: $count');

  // double avg = 9.8 / $count;

  // print(count);

  temps.add(weatherData[0]['temp'] ?? 0);
  temps.add(weatherData[1]['temp'] ?? 0);
  temps.add(weatherData[2]['temp'] ?? 0);

  rainData.add(weatherData[0]['rain'] ?? 0);
  rainData.add(weatherData[1]['rain'] ?? 0);
  rainData.add(weatherData[2]['rain'] ?? 0);

  windData.add(weatherData[0]['wind'] ?? 0);
  windData.add(weatherData[1]['wind'] ?? 0);
  windData.add(weatherData[2]['wind'] ?? 0);

  double avgTemp = (temps[0] + temps[1] + temps[2]) / count;
  double avgRain = (rainData[0] + rainData[1] + rainData[2]) / countRain;
  double avgWind = (windData[0] + windData[1] + windData[2]) / countWind;

  print('Die durchschnittliche Temperatur liegt bei $avgTemp °C');
  print('Der durchschnittliche Regenanteil liegt bei $avgRain mm');
  print('Die durchschnittliche Windstärke liegt bei $avgWind km/h');
}

  // List<double> temps = [];
  // List<double> rain = [];
// List<double> wind [];

  // temps.add(weatherData[0]['temp'] ?? 0);
  // temps.add(weatherData[1]['temp'] ?? 0);
  // temps.add(weatherData[2]['temp'] ?? 0);

  // print(temps);

// rain.add (weatherData[0] ['rain'] ?? 0);
// rain.add (weatherData[1] ['rain'] ?? 0);
// rain.add (weatherData[2] ['rain'] ?? 0);

// wind. add (weatherData[0]['wind'] ?? 0);
// wind. add (weatherData[1]['wind'] ?? 0);
// wind. add (weatherData[2]['wind'] ?? 0);

  // double avgTemp = (temps[0] + temps[1] + temps[2]) / weatherData.length;
  // String tempsString = avgTemp.toStringAsFixed(2);
  // double avgTempRndUp = double.parse(tempsString);
  // print('Average Temperture: $avgTempRndUp °C');
  // print('Measurments {0 means error: $temps}');


// double avgRain = (rain[0] + rain[1] + rain[2] / weatherData.length);
// String rainString = avgRain.toStringAsFixed(2);
// double avgRainRndUp = double.parse(rainString);
// print('Average Rain: $avgRainRndUp mm'); print('Measurments {0 means error: Srain}');
// print("');

// double avgWind = (wind [0] + wind[1] + wind[2]) / weatherData.length;
// String windString = avgWind.toStringAsFixed (2);
// double avgWindRndUp = double.parse(windString);
// print( 'Average Wind Speed: $avgWindRndUp km/h');
// print( 'Measurments {0 means error: $wind)');

// }
