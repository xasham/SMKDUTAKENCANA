import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smk_duta_kencana/component/HeroPageInformation.dart';
import 'package:smk_duta_kencana/data/DataText.dart';
// import "package:latlong/latlong.dart" as latLng;

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.symmetric(horizontal: 18),
      color: HexColor("#FDFDFD"),
      child: ListView(
        children: [
          HeroPageInformation(TEXT.lokasi.textHeader),
          SizedBox(height: 20),
          Image.network(
              'https://postimg.cc/94dHN5yB/350x350'),
        ],
      ),
    ));
  }
}
