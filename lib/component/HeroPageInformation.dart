import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';



// ignore: must_be_immutable
class HeroPageInformation extends StatelessWidget {
  String? name_page;
  HeroPageInformation(this.name_page);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 32),
        Center(
                  child: Text(
                    name_page!,
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            color: HexColor("#3A3181"),
                            fontSize: 18,
                            fontWeight: FontWeight.w400)),
                  ),
                ),
                SizedBox(height: 32)
      ],
    );
  }
}