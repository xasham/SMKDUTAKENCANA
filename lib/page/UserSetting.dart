import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smk_duta_kencana/component/ListTiles.dart';
import 'package:smk_duta_kencana/data/DataText.dart';
import 'package:smk_duta_kencana/router/RouteUtils.dart';
import 'package:smk_duta_kencana/services/GetUserController.dart';

class UserSetting extends StatefulWidget {
  UserSetting();

  @override
  State<UserSetting> createState() => _UserSettingState();
}

class _UserSettingState extends State<UserSetting> {
  GetUserController controller = Get.put(GetUserController());

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
      body: FutureBuilder<QuerySnapshot<Object?>>(
          future: controller.getData(),
          builder: (context, snapshot) {
          
            if (snapshot.connectionState == ConnectionState.done){
                var listAllDocs = snapshot.data!.docs;
                return ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
          
              return Column(
                children: [
                  SizedBox(
                    height: 32,
                  ),
                  Column(
                    children: [
                      Text(
                        "PPDB SISWA TELAH DIBUKA!",
                        style:
                            TextStyle(fontSize: 15, color: HexColor("#3A3181")),
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
                          style: TextStyle(
                              fontSize: 12, color: HexColor("#3825D2")),
                        ),
                      )
                    ],
                  ),
                  ListTiles(UTILS.form_name.data, "${(listAllDocs[index].data() as Map<String, dynamic>)["Nama"]}"),
                  ListTiles(UTILS.form_adrees.data, "${(listAllDocs[index].data() as Map<String, dynamic>)["Alamat"]}"),
                  ListTiles(UTILS.form_date.data, "${(listAllDocs[index].data() as Map<String, dynamic>)["tanggal"]}"),
                  ListTiles(UTILS.form_numberphone.data, "${(listAllDocs[index].data() as Map<String, dynamic>)["Telpon"]}"),
                  ListTiles(UTILS.form_parent.data, "${(listAllDocs[index].data() as Map<String, dynamic>)["Namaorangtua"]}"),
                  ListTiles(UTILS.form_school.data, "${(listAllDocs[index].data() as Map<String, dynamic>)["Asalsekolah"]}"),
                  ListTiles(UTILS.form_adrees_school.data, "${(listAllDocs[index].data() as Map<String, dynamic>)["Alamatsekolah"]}"),
                  // Column(
                  //   children: data.map((e) {
                  //     return Column(
                  //       children: [
                          
                  //         ListTiles("${e["Nama"]}", "${(listAllDocs[index].data() as Map<String, dynamic>)["Nama"]}"),
                  //         ListTiles("${e["Nama"]}", "${(listAllDocs[index].data() as Map<String, dynamic>)["Nama"]}"),
                  //         ListTiles("${e["Nama"]}", "${(listAllDocs[index].data() as Map<String, dynamic>)["Nama"]}")
                  //       ],
                  //     );
                  //   }).toList(),
                  // ),
                ],
              );
            });
            }
             return Center(child: CircularProgressIndicator());
          }),
    );
  }
}
