import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Bar extends StatelessWidget {
  const Bar({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    AppBar(
            automaticallyImplyLeading: false,
            elevation: 0,
            backgroundColor: HexColor("#FF00E5"),
            flexibleSpace: body(),
          );
     
  }

 Widget body(){
  return
  Container(
      child: Center(
        child: Image.asset("lib/assets/logo_smk.png", height: 42,),
      ),
      decoration: BoxDecoration(
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
