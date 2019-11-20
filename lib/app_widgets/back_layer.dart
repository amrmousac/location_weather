import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../management/managing_variables.dart';
import 'package:provider/provider.dart';
class BackLayer extends StatefulWidget {
  @override
  _BackLayerState createState() => _BackLayerState();
}

class _BackLayerState extends State<BackLayer> {

  @override
  Widget build(BuildContext context) {

    final ManagingVariables managingVariables = Provider.of<ManagingVariables>(context);

    Widget changeMapsType = DropdownButton(
      items: [
        DropdownMenuItem(
          child: Text('normal'),
          value: MapType.normal,
        ),
        DropdownMenuItem(
          child: Text('hybrid'),
          value: MapType.hybrid,
        ),
      ],
      onChanged: (value){
        setState(() {
          managingVariables.currentMapType = value;
        });
      },
      value: managingVariables.currentMapType,
    );

    Widget changeLangSummary = DropdownButton(
      items: [
        DropdownMenuItem(
          child: Text('English'),
          value: 'en',
        ),
        DropdownMenuItem(
          child: Text('Arabic'),
          value: 'ar',
        ),

      ],
      onChanged: (value){
        setState(() {
          managingVariables.summaryLanguage = value;
        });
      },
      value: managingVariables.summaryLanguage,
    );


    return Column(
      children: <Widget>[
        ListTile(
          title: Text('Map type'),
          trailing: changeMapsType,
        ),
        ListTile(
          title: Text('summary language'),
          trailing: changeLangSummary,
        )
      ],
    );
  }
}
