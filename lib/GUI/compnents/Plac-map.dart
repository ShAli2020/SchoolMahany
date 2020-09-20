import 'package:flutter/material.dart';

class LocationPlacePage extends StatefulWidget {
//  final name;
//  final lat;
//  final lng;
//  LocationPlacePage({this.name, this.lat, this.lng});
  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPlacePage> {
//  GoogleMapController mapController;
//
//  BitmapDescriptor pinLocationIcon;
//
//  String _mapStyle;
//  String _mapdarkStyle;

  @override
//  void initState() {
//    // TODO: implement initState
//
//    super.initState();
//
//    BitmapDescriptor.fromAssetImage(ImageConfiguration(devicePixelRatio: 2.5),
//        'assats/imags/marker.png')
//        .then((onValue) {
//      pinLocationIcon = onValue;
//    });
//
//    rootBundle.loadString('assats/map_style.txt').then((string) {
//      _mapStyle = string;
//    });
//
//    rootBundle.loadString('assats/map_style_dark.txt').then((string) {
//      _mapdarkStyle = string;
//    });
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("الموقع")
//        Text(widget.name),
          ),
//        body: Consumer<ThemeNotifier>(
//          builder: (context, notifier, child) => GoogleMap(
//            markers: {
//              Marker(
//                  markerId: (MarkerId(widget.name)),
//                  position: LatLng(
//                      double.parse(widget.lat), double.parse(widget.lng)),
//                  infoWindow: InfoWindow(title: widget.name),
//                  icon: pinLocationIcon)
//            },
//            mapType: MapType.normal,
//            initialCameraPosition: CameraPosition(
//              target:
//              LatLng(double.parse(widget.lat), double.parse(widget.lng)),
//              zoom: 14.0,
//            ),
//            onMapCreated: (GoogleMapController controller) {
//              mapController = controller;
//              notifier.darkTheme
//                  ? mapController.setMapStyle(_mapStyle)
//                  : mapController.setMapStyle(_mapdarkStyle);
//            },
//          ),
//        )
    );
  }
}
