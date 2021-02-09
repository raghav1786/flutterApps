import '../services/location.dart';
import '../services/networking.dart';

const apiKey = "695a56f49632647d19e704d47f8f7ba8";
const openWeatherMapURL = 'https://api.openweathermap.org/data/2.5/weather';

class WeatherModel {
  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }

  Future<dynamic> getLocationData() async {
    LocationManager locationManager = LocationManager();
    await locationManager.getCurrentLocation();
    String url =
        '$openWeatherMapURL?lat=${locationManager.latitude}&lon=${locationManager.longitude}&appid=$apiKey&units=metric';
    Networking networkHelper = Networking(url);
    return await networkHelper.getData();
  }

  Future<dynamic> getCityWeather(String cityName) async {
    String url = '$openWeatherMapURL?q=$cityName&appid=$apiKey&units=metric';
    Networking networkHelper = Networking(url);
    return await networkHelper.getData();
  }
}
