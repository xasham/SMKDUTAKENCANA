import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

// ignore: must_be_immutable
class CardFacility extends StatefulWidget {
  dynamic image;
  String? title;

  CardFacility(this.image, this.title);

  @override
  State<CardFacility> createState() => _Card_FacilityState();
}

class _Card_FacilityState extends State<CardFacility> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)), // Image border
              child: Image.asset(widget.image),
            ),
            Column(
              children: [
                SizedBox(
                  height: 149,
                ),
                Container(
                  height: 68,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      stops: [
                        0.1,
                        0.9,
                      ],
                      colors: [
                        HexColor("#000000").withOpacity(0.4),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 180,
              left: 13,
              child: Text(
                widget.title!,
                style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                        color: HexColor("#FFFFFF"),
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
            )
          ],
        ),
        SizedBox(height: 12,)
      ],

    );
  }
}
