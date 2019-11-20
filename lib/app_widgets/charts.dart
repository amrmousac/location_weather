
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:location_weather/Utils/dark_sky_model.dart';
class DailyCharts extends StatelessWidget {
  final List<DailyDatum>dayTemp;

  const DailyCharts( this.dayTemp) ;
  @override
  Widget build(BuildContext context) {

    final data = [
      new TimeSeriesData(new DateTime.fromMillisecondsSinceEpoch(dayTemp[0].time * 1000), dayTemp[0].temperatureHigh.round()),
      new TimeSeriesData(new DateTime.fromMillisecondsSinceEpoch(dayTemp[1].time * 1000), dayTemp[1].temperatureHigh.round()),
      new TimeSeriesData(new DateTime.fromMillisecondsSinceEpoch(dayTemp[2].time * 1000),dayTemp[2].temperatureHigh.round()),
      new TimeSeriesData(new DateTime.fromMillisecondsSinceEpoch(dayTemp[3].time * 1000), dayTemp[3].temperatureHigh.round()),
      new TimeSeriesData(new DateTime.fromMillisecondsSinceEpoch(dayTemp[4].time * 1000), dayTemp[4].temperatureHigh.round()),
      new TimeSeriesData(new DateTime.fromMillisecondsSinceEpoch(dayTemp[5].time * 1000), dayTemp[5].temperatureHigh.round()),
      new TimeSeriesData(new DateTime.fromMillisecondsSinceEpoch(dayTemp[6].time * 1000), dayTemp[6].temperatureHigh.round()),
      new TimeSeriesData(new DateTime.fromMillisecondsSinceEpoch(dayTemp[7].time * 1000), dayTemp[7].temperatureHigh.round()),
    ];
    final data2 = [
      new TimeSeriesData(new DateTime.fromMillisecondsSinceEpoch(dayTemp[0].time * 1000),dayTemp[0].temperatureLow.round()),
      new TimeSeriesData(new DateTime.fromMillisecondsSinceEpoch(dayTemp[1].time * 1000), dayTemp[1].temperatureLow.round()),
      new TimeSeriesData(new DateTime.fromMillisecondsSinceEpoch(dayTemp[2].time * 1000), dayTemp[2].temperatureLow.round()),
      new TimeSeriesData(new DateTime.fromMillisecondsSinceEpoch(dayTemp[3].time * 1000), dayTemp[3].temperatureLow.round()),
      new TimeSeriesData(new DateTime.fromMillisecondsSinceEpoch(dayTemp[4].time * 1000), dayTemp[4].temperatureLow.round()),
      new TimeSeriesData(new DateTime.fromMillisecondsSinceEpoch(dayTemp[5].time * 1000), dayTemp[5].temperatureLow.round()),
      new TimeSeriesData(new DateTime.fromMillisecondsSinceEpoch(dayTemp[6].time * 1000),dayTemp[6].temperatureLow.round()),
      new TimeSeriesData(new DateTime.fromMillisecondsSinceEpoch(dayTemp[7].time * 1000), dayTemp[7].temperatureLow.round()),
    ];

    var series= [
      charts.Series(
        colorFn: (__,_)=>charts.ColorUtil.fromDartColor(Colors.redAccent),
        domainFn: (TimeSeriesData tempData,_)=>tempData.time,
        measureFn: (TimeSeriesData tempData,_)=>tempData.data,
        id: 'high',
        data: data,
        displayName: 'high',
      ),
      charts.Series(
          colorFn: (__,_)=>charts.ColorUtil.fromDartColor(Colors.blueAccent),
        domainFn: (TimeSeriesData tempData,_)=>tempData.time,
        measureFn: (TimeSeriesData tempData,_)=>tempData.data,
        id: 'low',
        data: data2,
        displayName: 'low'
      )
    ];

    var chart =charts.TimeSeriesChart(series,animationDuration: Duration(seconds: 2),);
    return chart;
  }
}
class TimeSeriesData {
  final DateTime time;
  final int data;

  TimeSeriesData(this.time, this.data);
}