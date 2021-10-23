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
  //double long = 43.404574;
  //double lat = 39.964702;
//1 параметр Y - чем больше тем выше..
//2 параметр Х - чем больше тем правее
//43.40$$60 эти цифры
  LatLng point = LatLng(43.404460, 39.964252);
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
                  zoom: 18.0,
                  minZoom: 10.0,
                  maxZoom: 18.0,
                ),
                layers: [
                  TileLayerOptions(
                      urlTemplate:
                          "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                      subdomains: ['a', 'b', 'c']),
                  new MarkerLayerOptions(
                    markers: [
                      Marker(
                        width: 90.0,
                        height: 90.0,
                        point: point,
                        builder: (ctx) => new Container(
                          child: Column(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.green,
                              ),
                              Text('Вход'),
                            ],
                          ),
                        ),
                      ),
                      Marker(
                        width: 90.0,
                        height: 90.0,
                        point: LatLng(43.404280, 39.965252),
                        builder: (ctx) => new Container(
                          child: Column(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.red,
                              ),
                              Text('Сраное озеро'),
                            ],
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
