import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
import 'package:location/location.dart';
import 'package:tell_julia/common/colors/common_colors.dart';
import 'package:tell_julia/page/feedback/feedback_info_page.dart';
import 'package:tell_julia/page/feedback/feedback_page.dart';

class MapPage extends StatefulWidget {
  //final FeedbackPage feedbackPage;

  //const MapPage({Key key, this.feedbackPage}) : super(key: key);
  final String namePage;

  const MapPage({Key key, @required this.namePage}) : super(key: key);

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  Map<String, double> _startLocation;
  Map<String, double> _currentLocation;
  bool _loadingInProgress;

  StreamSubscription<Map<String, double>> _locationSubscription;

  Location _location = Location();
  bool _permission = false;
  String error;

  bool currentWidget = true;

  Image image1;

  @override
  void initState() {
    super.initState();

    _loadingInProgress = true;

    initPlatformState();

    /*_locationSubscription =
        _location.onLocationChanged().listen((Map<String, double> result) {
      setState(() {
        //_currentLocation = result;
      });
    });*/
  }

  initPlatformState() async {
    Map<String, double> location;
    try {
      _permission = await _location.hasPermission();
      location = await _location.getLocation();
      setState(() {
        _startLocation = location;
        _loadingInProgress = false;
      });

      error = null;
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return _loadingInProgress == true
        ? Center(
            child: CircularProgressIndicator(),
          )
        : Scaffold(
            appBar: AppBar(
                title: Text(
                  'Карта',
                  style: TextStyle(fontWeight: FontWeight.w300),
                ),
                backgroundColor: CommonColors.commonMainContainerColor),
            body: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                FlutterMap(
                  options: MapOptions(
                      center: LatLng(55.0, 50.0),
                      minZoom: 10.0),
                  layers: [
                    TileLayerOptions(
                        urlTemplate:
                            'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                        subdomains: ['a', 'b', 'c']),
                    MarkerLayerOptions(
                      markers: [
                        Marker(
                          width: 45.0,
                          height: 45.0,
                          point: LatLng(55.0, 50.0),
                          builder: (context) => Container(
                                child: IconButton(
                                  icon: Icon(Icons.location_on),
                                  color: Colors.red,
                                  iconSize: 45.0,
                                  onPressed: () {
                                    print('Marker tapped');
                                  },
                                ),
                              ),
                        ),
                      ],
                    ),
                  ],
                ),
                Positioned(
                  bottom: 30,
                  left: 20,
                  right: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      ButtonTheme(
                        minWidth: width * 0.4,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          padding: EdgeInsets.all(15.0),
                          color: CommonColors.commonMainContainerColor,
                          child: Text(
                            'Пропустить',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w300),
                          ),
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed(widget.namePage);
                           /* Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FeedbackInfoPage(
                                      feedbackPage: widget.feedbackPage,
                                    ),
                              ),
                            );*/
                          },
                        ),
                      ),
                      ButtonTheme(
                        minWidth: width * 0.4,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          padding: EdgeInsets.all(15.0),
                          color: CommonColors.commonMainContainerColor,
                          child: Text(
                            'Подтвердить',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed(widget.namePage);
                            /*Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FeedbackInfoPage(
                                    feedbackPage: widget.feedbackPage),
                              ),
                            );*/
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
  }

  Widget feedbackBody() {
    return null;
  }
}
