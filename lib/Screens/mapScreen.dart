import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:geocoder/geocoder.dart';
import 'package:geocoder/model.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'home.dart';

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
    return "${first.addressLine}";

  }
  @override
  void initState() {
    super.initState();
    markers =Set.from([]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(



      floatingActionButton: FloatingActionButton(onPressed: ()async{
        String add=await getAddressLocation(Coordinates(pos1.latitude ,pos1.longitude));
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home(add)));
      },child: Text("Submit"),),



      body: GoogleMap(initialCameraPosition:CameraPosition(target: LatLng(31.2556260, 29.9866080),zoom: 14.0),
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
