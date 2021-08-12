class WeatherData {
  final DateTime date;
  final String name;
  final double temp;
  final String main;
  final String icon;
  final int humidity;

  WeatherData(
      {required this.date,
      required this.name,
      required this.temp,
      required this.main,
      required this.icon,
      required this.humidity});
  factory WeatherData.fromJson(Map<String, dynamic> json) {
    return WeatherData(
        date: new DateTime.fromMillisecondsSinceEpoch(json['dt'] * 1000,
            isUtc: false),
        name: json['name'],
        temp: json['main']['temp'].toDouble(),
        main: json['weather'][0]['main'],
        icon: json['weather'][0]['icon'],
        humidity: json['main']['humidity']);
  }
}
