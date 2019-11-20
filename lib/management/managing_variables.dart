import 'package:flutter/foundation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../Utils/dark_sky_model.dart';
class ManagingVariables  with ChangeNotifier{
  MapType _currentMapType =MapType.hybrid;
  String _summaryLanguage = 'en';

  String get summaryLanguage => _summaryLanguage;

  set summaryLanguage(String value) {
    _summaryLanguage = value;
    notifyListeners();
  }

  MapType get currentMapType => _currentMapType;

  set currentMapType(MapType value) {
    _currentMapType = value;
    notifyListeners();
  }

}