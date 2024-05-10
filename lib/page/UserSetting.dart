import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smk_duta_kencana/component/HeroPageInformation.dart';
import 'package:smk_duta_kencana/component/ListTiles.dart';
import 'package:smk_duta_kencana/data/DataText.dart';
import 'package:smk_duta_kencana/router/RouteUtils.dart';

class UserSetting extends StatefulWidget {
  const UserSetting({super.key});

  @override
  State<UserSetting> createState() => _UserSettingState();
}

class _UserSettingState extends State<UserSetting> {
  List<Map<String, String>> data = [
    {"Nama": UTILS.form_name.data},
    {"Nama": UTILS.form_adrees.data},
    {"Nama": UTILS.form_date.data},
    {"Nama": UTILS.form_numberphone.data},
    {"Nama": UTILS.form_parent.data},
    {"Nama": UTILS.form_school.data},
    {"Nama": UTILS.form_adrees_school.data},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: ListView(
          children: [
            // HeroPageInformation(TEXT.user.textHeader),
            SizedBox(height: 32,),
            Column(
              children: [
                Text(
                  "PPDB SISWA TELAH DIBUKA!",
                  style: TextStyle(fontSize: 15, color: HexColor("#3A3181")),
                ),
                InkWell(
                  onTap: () {
                    context.pushNamed(APP_PAGE.ppdb.toName).then((_) {
                      print('Page B is popped');
                      context.pop();
                    });
                  },
                  child: Text(
                    "DAFTAR DISINI",
                    style: TextStyle(fontSize: 12, color: HexColor("#3825D2")),
                  ),
                )
              ],
            ),
            Column(
              children: data.map((e) {
                return ListTiles("${e["Nama"]}");
              }).toList(),
            ),
          ],
        ),
        color: HexColor("#FDFDFD"),
      ),
    );
  }
}
