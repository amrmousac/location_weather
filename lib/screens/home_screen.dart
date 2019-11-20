
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:backdrop/backdrop.dart';
import '../app_widgets/back_layer.dart';

import '../app_widgets/g_maps.dart';

class HomeScreen extends StatefulWidget {
  final locationWeather;

  const HomeScreen({ this.locationWeather});
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {


    return BackdropScaffold(

      frontLayerBorderRadius: BorderRadius.all(Radius.circular(0.1)),
      headerHeight: MediaQuery.of(context).size.height*0.60,

      title: Text('Location Weather'),

      backLayer: BackLayer(),



      frontLayer: GMaps(locationWeather:widget.locationWeather),
    );
  }
}
