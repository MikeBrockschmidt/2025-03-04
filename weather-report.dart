void main() {
// Liste hat garantiert immer 3 Elemente

  List<Map<String, double?>> weatherData = [
    {'temp': 5.3, 'rain': 0.9, 'wind': null},
    {'temp': 4.5, 'rain': null, 'wind': 16.8},
    {'temp': null, 'rain': 3.8, 'wind': null},
  ];

// Erstelle leere Liste für Temperaturen

// List<double?> temps = [];
    List<double?> temps = [5.3, 4.5, null];
    List<double?> rainData = [0.9, null, 3.8];
    List<double?> windData = [null, 16.8, null];

// Füge die Temperaturen der Wetterdaten in die Liste ein

  temps.add(weatherData[2]['temp']) ?? 0;
  rainData.add(weatherData[1]['rain']) ?? 0;
  temps.add(weatherData[0, 2]['wind']); ?? 0;

// Berechne den Durchschnitt der Temperaturen

  double? avgTemp = (temps[0] + temps[1] + temps[2]) / 2;
  double? avgRain = (rainData[0] + rainData[1] + rainData[2]) / 2;
  double? avgWind = (windData[0] + windData[1] + windData[2]) / 1;
  
  print('Durchschnittstemperatur: $avgTemp');
  print('Durchschnittlicher Regen: $avgRain');
  print('Durchschnittlicher Wind: $avgWind');
}
