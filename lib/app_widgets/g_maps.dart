import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../management/managing_variables.dart';
import 'package:provider/provider.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import '../Utils/dark_sky_model.dart';
import '../Utils/weather_model.dart';
import 'detailed_info.dart';

class GMaps extends StatefulWidget {
  final locationWeather;

  const GMaps({this.locationWeather});

  @override
  _GMapsState createState() => _GMapsState();
}

class _GMapsState extends State<GMaps> {
  GoogleMapController _mapController;
  Daily daily;
  Currently currently;
  double latitude;
  double longitude;
  String timezone;

  @override
  void initState() {
    super.initState();
    currently = Currently.fromJson(widget.locationWeather['currently']);
    daily = Daily.fromJson(widget.locationWeather['daily']);

    updateUI(widget.locationWeather);

  }

  void updateUI(dynamic weatherData) {
    setState(() {
      latitude = weatherData['latitude'];
      longitude = weatherData['longitude'];
      currently = Currently.fromJson(weatherData['currently']);
      daily = Daily.fromJson(weatherData['daily']);
      timezone = weatherData['timezone'];
    });
  }

  @override
  Widget build(BuildContext context) {
    final ManagingVariables managingVariables = Provider.of<ManagingVariables>(context);

    final CameraPosition _currentCameraPosition = CameraPosition(
      target: LatLng(latitude, longitude),
      zoom: 14.4746,
    );

    return SlidingUpPanel(
      panel: Center(
        child: DetailedInfo(timezone: timezone,currently: currently,daily: daily),
      ),
      body: Center(
        child: GoogleMap(
          onTap: (LatLng latLng) async {
            var weatherData = await WeatherModel().getCurrentLocationWeather(
                latLng.latitude.toDouble(), latLng.longitude.toDouble(), managingVariables.summaryLanguage);
            updateUI(weatherData);
          },
          mapType: managingVariables.currentMapType,
          initialCameraPosition: _currentCameraPosition,
          markers: Set.from([
            Marker(
              markerId: MarkerId('currentLatLng'),
              flat: true,
              position: LatLng(latitude, longitude),
              icon: BitmapDescriptor.defaultMarkerWithHue(
                BitmapDescriptor.hueAzure,
              ),
            ),
          ]),
          onMapCreated: (GoogleMapController controller) {
            _mapController = controller;
          },
        ),
      ),
    );
  }
}
