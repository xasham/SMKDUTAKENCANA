import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

// ignore: must_be_immutable
class CardArticle extends StatefulWidget {
  dynamic image;
  String? tittle;
  CardArticle(this.image, this.tittle );

  @override
  State<CardArticle> createState() => _CardArticleState();
}

class _CardArticleState extends State<CardArticle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: HexColor("#FFFFFF"),
        border: Border(
      bottom: BorderSide(
        color: HexColor("#AAAAAA"), // Color for top border
        width: 0.5, // Setting width to 0 makes the top border invisible
      ))
      ),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      height: 104,
      
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(widget.image),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Text(
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              widget.tittle!,
              style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                      color: HexColor("#343434"),
                      fontSize: 12,
                      fontWeight: FontWeight.w500)),
            ),
          ),
        ],
      ),
    );
  }
}
