import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
//import 'package:async/async.dart';
import 'package:latlong2/latlong.dart';

class ParkMap extends StatefulWidget {
  //ParkMap({Key? key}) : super(key: key);
  static const routeName = '/map_screen';
  @override
  _ParkMapState createState() => _ParkMapState();
}

class _ParkMapState extends State<ParkMap> {
  double long = 49.5;
  double lat = -0.09;
  LatLng point = LatLng(43.404574, 39.964702);
  var location = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Карта'),
      ),
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              FlutterMap(
                options: new MapOptions(
                  center: LatLng(43.404574, 39.964702),
                  zoom: 30.0,
                ),
                layers: [
                  TileLayerOptions(
                      urlTemplate:
                          "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                      subdomains: ['a', 'b', 'c']),
                  new MarkerLayerOptions(
                    markers: [
                      Marker(
                        width: 80.0,
                        height: 80.0,
                        point: point,
                        builder: (ctx) => new Container(
                          child: Icon(
                            Icons.location_on,
                            color: Colors.green,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
