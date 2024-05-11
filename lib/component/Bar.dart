
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smk_duta_kencana/page/example.dart';
import 'package:smk_duta_kencana/services/AuthController.dart';

class Bar extends StatelessWidget {
  Bar({super.key});
  final authc = AuthController();
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: HexColor("#FF00E5"),
      flexibleSpace: body(context),
    );
  }

  Widget body(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: Image.asset(
              "lib/assets/logo_smk.png",
              height: 42,
            ),
          ),
          SizedBox(
            width: 100,
          ),
          InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return example(
                          "konfirmasi", Text('Apakah anda ingin logout dari akun anda?'), [
                             TextButton(
                          onPressed: () {
                            context.pop();
                          },
                          child: Text("Tidak"),
                        ),
                        TextButton(
                          onPressed: () {
                            authc.logout();
                          },
                          child: Text("Oke"),
                        ),
                       
                      ]);
                    });
              },
              child: Icon(
                Icons.logout,
                size: 23,
                color: HexColor("#3A3181"),
              ))
        ],
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
