import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
class TextHeader extends StatelessWidget {
  final String? text_message;
  final String? text_information;
  const TextHeader(this.text_message, this.text_information);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
            style: GoogleFonts.roboto(
                textStyle: TextStyle(
                    color: HexColor("#3A3181"),
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            text_message!),
        SizedBox(height: 17,),
        Text(style: GoogleFonts.roboto(
                textStyle: TextStyle(
                    color: HexColor("#B6B6B6"),
                    fontSize: 15,
                    fontWeight: FontWeight.w300)), text_information!),
      ],
    );
  }
}
