import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smk_duta_kencana/data/DataText.dart';
import 'package:smk_duta_kencana/router/RouteUtils.dart';

// ignore: must_be_immutable
class TextConfirmation extends StatelessWidget {
  bool? ismethod;
  TextConfirmation(this.ismethod);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (ismethod == true)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               SizedBox(
                height: 12,
              ),
              Text(
                  style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                          color: HexColor("#3825D2"),
                          fontSize: 12,
                          fontWeight: FontWeight.w500)),
                  "Reset kata sandi"),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Text(
                    "Anda belum memiliki akun?",
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            color: HexColor("#343434"),
                            fontSize: 12,
                            fontWeight: FontWeight.w500)),
                  ),
                  InkWell(
                    onTap: (){
                      context.pushNamed(APP_PAGE.register.toName).then((_) {
                      context.pop();
                    });
                    },
                    child: Text(
                      "daftar disini",
                      style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              color: HexColor("#3A3181"),
                              fontSize: 12,
                              fontWeight: FontWeight.w700)),
                    ),
                  ),
                ],
              ),
            ],
          )
        else
          Row(
            children: [
              Text("Apakah anda sudah memiliki akun?" , style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            color: HexColor("#343434"),
                            fontSize: 12,
                            fontWeight: FontWeight.w500)),),
              InkWell(
                    onTap: (){
                      context.pushNamed(APP_PAGE.login.toName).then((_) {
                      context.pop();
                    });
                    },
                    child: Text(
                      "masuk disini",
                      style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              color: HexColor("#3A3181"),
                              fontSize: 12,
                              fontWeight: FontWeight.w700)),
                    ),
                  ),
              
            ],
          ),
      ],
    );
  }
}
