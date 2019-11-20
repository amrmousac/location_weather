import 'package:flutter/material.dart';
import 'package:location_weather/management/managing_variables.dart';
import 'package:provider/provider.dart';
import 'screens/splash_screen.dart';
import 'themes.dart';

void main() => runApp(
    ChangeNotifierProvider(
    child: MyApp(),
  builder: (context)=>ManagingVariables(),
));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,
      theme: (TimeOfDay.now().hour > 12) ? darkThemeData:themeData,
      home: SafeArea(child: SplashScreen()),
    );
  }
}
