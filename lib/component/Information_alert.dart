import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Information_alert extends StatefulWidget {
  GestureTapCallback onPressed;
  Information_alert(this.onPressed);

  @override
  State<Information_alert> createState() => _Information_alertState();
}

class _Information_alertState extends State<Information_alert> {

  @override
  Widget build(BuildContext context) {
    return Container(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 19, vertical: 15),
                child: Column(
                  children: [
                    Text(
                      "Lowongan  PPDB Sudah dibuka kembali!",
                      style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              color: HexColor("#FFFFFF"),
                              fontSize: 12,
                              fontWeight: FontWeight.w400)),
                    ),
                    SizedBox(height: 6),
                    InkWell(
                      onTap: widget.onPressed,
                      child: Text(
                        "Daftar disini >",
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                                color: HexColor("#FFFFFF"),
                                fontSize: 12,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ],
                ),
              ),
              height: 70,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: [
                    0.1,
                    0.9,
                  ],
                  colors: [
                    HexColor("#8F00FF"),
                    HexColor("#FF00E5"),
                  ],
                ),
                borderRadius: BorderRadius.circular(5),
                color: HexColor("#FFFFFF"),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 20,
                    offset: Offset(0, 5), // changes position of shadow
                  ),
                ],
              ),
            );
  }
}