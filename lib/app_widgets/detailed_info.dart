import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:location_weather/Utils/dark_sky_model.dart';
import 'charts.dart';


class DetailedInfo extends StatelessWidget {
final Currently currently;
final Daily daily;
final String timezone;

  const DetailedInfo({ this.timezone,this.currently, this.daily});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: <Widget>[
          customLine(context),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: <Widget>[
                    Text('timezone: $timezone',style: TextStyle(fontSize: 16.0,color:Color(0xff4c7e39)),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(right: 16.0),
                                child: Image.asset('lib/assets/icons/${currently.icon}.png'),
                              ),
                              Text(
                                currently.summary,
                                style: TextStyle(fontSize: 24.0, color: Colors.blueGrey),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                textBaseline: TextBaseline.alphabetic,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                children: <Widget>[
                                  Text(
                                    '${currently.temperature}',
                                    style: TextStyle(
                                      fontSize: 42.0,
                                      color: Color(0xff21493e),
                                    ),
                                  ),
                                  Text(
                                    '°c',
                                    style: TextStyle(
                                      fontSize: 32.0,
                                      color: Color(0xff21493e),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'feel like ${currently.apparentTemperature}°c',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Color(0xff394c7e)
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 32.0),
                      child: details(),
                    ),

                    Container(
                      padding: EdgeInsets.all(4.0),
                      margin: EdgeInsets.symmetric(vertical: 16.0),
                      decoration: BoxDecoration(
                        color: Color(0xffcccccc)
                      ),
                      child: Text(
                        '⚠ ${daily.summary}',
                        style: TextStyle(fontSize: 24.0,),
                        textAlign: TextAlign.center,
                      ),
                    ),

                    Column(

                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[

                            Text('Temperature throught the week:',style: TextStyle(fontSize: 14.0),),
                            Text('max',style: TextStyle(fontSize: 12.0,color: Colors.redAccent),),
                            Text('min',style: TextStyle(fontSize: 12.0,color: Colors.blueAccent),),

                          ],
                        ),
                        Container(
                          height: MediaQuery.of(context).size.width,
                          child: DailyCharts(daily.data),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
Table details() {
  return Table(

    children: [

      TableRow(
        children: [
          info(
            text: 'wind',
            value: '${currently.windSpeed}m/s',
            iconPath: 'lib/assets/icons/wind_icon.png',
          ),
          info(
            text: 'pressure',
            value: '${currently.pressure}hPa',
            iconPath: 'lib/assets/icons/pressure_icon.png',
          ),
        ],
      ),
      TableRow(
        children: [
          info(
            text: 'uv index',
            value: '${currently.uvIndex}',
            iconPath: 'lib/assets/icons/uvindex_icon.png',
          ),
          info(
            text: 'humidity',
            value: '${(currently.humidity*100).round()}%',
            iconPath: 'lib/assets/icons/humidity_icon.png',
          ),
        ],
      ),
      TableRow(
        children: [
          info(
            text: 'dew point',
            value: '${currently.dewPoint.round()}°c',
            iconPath: 'lib/assets/icons/dew_point_icon.png',
          ),
          info(
            text: 'visibility',
            value: '${currently.visibility.round()}km',
            iconPath: 'lib/assets/icons/visibility_icon.png',
          ),
        ],
      ),
    ],
  );
}

Padding info({text, value, iconPath}) => Padding(
  padding: const EdgeInsets.all(8.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            text,
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
          Text(value),
        ],
      ),
      Image.asset(iconPath),
    ],
  ),
);
Container customLine(context) => Container(
  height: 8.0,
  width: MediaQuery.of(context).size.width * 0.50,
  margin: EdgeInsets.symmetric(vertical: 16.0),
  decoration: BoxDecoration(
      color: Colors.grey,
      borderRadius: BorderRadius.all(Radius.circular(4.0))),
);

}

