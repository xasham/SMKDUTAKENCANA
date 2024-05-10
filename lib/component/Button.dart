import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class Button extends StatefulWidget {
 String? texts;
  GestureTapCallback onPressed;
  Button( this.texts,  this.onPressed);

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: HexColor("#3A3181"),
        ),
        onPressed: widget.onPressed,
        child: Text(
            style: GoogleFonts.roboto(
                textStyle: TextStyle(
                    color: HexColor("#FFFFFF"),
                    fontSize: 15,
                    fontWeight: FontWeight.w500)),
            widget.texts!));
  }
}
