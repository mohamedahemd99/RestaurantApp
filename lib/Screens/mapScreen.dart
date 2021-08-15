import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:geocoder/geocoder.dart';
import 'package:geocoder/model.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:restaurant/Constants/constants.dart';
import 'package:restaurant/Constants/widthandheight.dart';
import 'home.dart';

class SelectLocation extends StatefulWidget {
  SelectLocation({this.currentLocation});
  final currentLocation;
  @override
  _SelectLocationState createState() => _SelectLocationState();
}


class _SelectLocationState extends State<SelectLocation> {
  Set<Marker>markers;
  LatLng pos1;
  String address1;
  Position currentPossition;

  getAddressLocation(Coordinates pos1)async{
    var addresses = await Geocoder.local.findAddressesFromCoordinates(pos1);
    var first = addresses.first;
    return "${first.addressLine}";
  }
  @override
  void initState() {
    super.initState();
    markers =Set.from([]);
    print(widget.currentLocation);
    print("SADAKLSJDKLAJS");
    currentPossition=widget.currentLocation;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition:CameraPosition(target:currentPossition!=null?LatLng(currentPossition.latitude,currentPossition.longitude):LatLng(3.025222515,255.006656),zoom: 10.0),
            zoomControlsEnabled:false,
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
          Container(
            alignment: Alignment.bottomCenter,
            child: GestureDetector(
              onTap: ()async{
                String add=await getAddressLocation(Coordinates(pos1.latitude ,pos1.longitude));
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home(add)));
                },
              child: Container(
                  height: 50.0,
                  width: getwidth(context)/5,
                  decoration: BoxDecoration(
                      border: Border.all(color:Colors.grey,width: 2 ),
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  child:Center(child: Text("Select",style: firstFontCard,))
              ),
            ),
          ) ,

        ],
      ),

    );
  }
}
