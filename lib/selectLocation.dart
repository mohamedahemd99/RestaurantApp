import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:geocoder/geocoder.dart';
import 'package:geocoder/model.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'selectedLocation.dart';

class SelectLocation extends StatefulWidget {
  @override
  _SelectLocationState createState() => _SelectLocationState();
}

class _SelectLocationState extends State<SelectLocation> {
  Set<Marker>markers;
  LatLng pos1;
  String address1;


  getAddressLocation(Coordinates pos1)async{
    var addresses = await Geocoder.local.findAddressesFromCoordinates(pos1);
    var first = addresses.first;
    print("${first.addressLine}");
    print(pos1);
    address1= "${first.addressLine}";
  }
  @override
  void initState() {
    super.initState();
    markers =Set.from([]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(



      floatingActionButton: FloatingActionButton(onPressed: (){
        getAddressLocation(Coordinates(pos1.latitude ,pos1.longitude));
        print("das");
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home1(data:address1),));
      },child: Text("Submit"),),



      body: GoogleMap(initialCameraPosition: CameraPosition(target: LatLng(31.2556260, 29.9866080),zoom: 10.0),
        zoomControlsEnabled:false ,
        onTap: (pos){
        Marker m = Marker(markerId: MarkerId("1"),
          position: pos,
        );
        pos1=pos;
        setState(() {
          markers.add(m);
        });
        },
        markers: markers,
      ),

    );
  }
}
