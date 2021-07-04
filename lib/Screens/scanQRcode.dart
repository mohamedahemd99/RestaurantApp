import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import '../Constants/constants.dart';
class QRcode extends StatefulWidget {
  @override
  _QRcodeState createState() => _QRcodeState();
}
class _QRcodeState extends State<QRcode> {
  final qrKey= GlobalKey(debugLabel: 'QR');
  QRViewController controller;
  Barcode barcode;

  @override
  void dispose(){
    controller?.dispose();
    super.dispose();
  }
  @override
  void reassemble()async{

    super.reassemble();
    if(Platform.isAndroid){
      await controller.pauseCamera();
    }
    controller.resumeCamera();
  }



 Widget  buildQrView(BuildContext context)=>QRView(
   key: qrKey,
     onQRViewCreated:onQRViewCreated,
   overlay: QrScannerOverlayShape(
     borderColor:primaryColor ,
     borderRadius: 10.0,
     borderWidth: 10.0,
     borderLength: 20.0,
     cutOutSize: MediaQuery.of(context).size.width*0.8,
   ),
 );

  Widget buildResult() => Container(
    padding: EdgeInsets.all(12.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
      color: Colors.white24
    ),
    child: Text(
      barcode != null? 'Result : ${barcode.code}':'Scan a code!',
      maxLines: 3,
    ),
  );

  void onQRViewCreated(QRViewController controller){
    setState(() =>this.controller=controller);

    controller.scannedDataStream.listen((barcode)=>setState(()=>this.barcode=barcode));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          buildQrView(context),
          Positioned(bottom: 10,child: buildResult()),


        ],
      ),
    );
  }
}
