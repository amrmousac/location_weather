import '../Utils/location.dart';
import 'networking.dart';

import 'api_key.dart';

const darkSkyUrl ='https://api.darksky.net/forecast';

class WeatherModel {

  Future<dynamic> getLocationWeather() async{

    Location location = Location();
    await location.getCurrentLocation();

    NetworkHelper networkHelper = NetworkHelper(
        url:
        '$darkSkyUrl/$apiKey/${location.latitude},${location.longitude}?exclude=minutely,hourly,flags&units=si');

    var networkData = await networkHelper.getData();
    return networkData;
  }

 Future<dynamic> getCurrentLocationWeather(double latitude,double longitude,String lang)async{
   NetworkHelper networkHelper = NetworkHelper(
       url:
       '$darkSkyUrl/$apiKey/$latitude,$longitude?lang=$lang&exclude=minutely,hourly,flags&units=si');

   var networkData = await networkHelper.getData();
   return networkData;
  }

}