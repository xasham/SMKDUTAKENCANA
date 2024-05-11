import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smk_duta_kencana/component/CardFacility.dart';
import 'package:smk_duta_kencana/component/HeroPageInformation.dart';
import 'package:smk_duta_kencana/component/Information_alert.dart';
import 'package:smk_duta_kencana/data/DataText.dart';
import 'package:smk_duta_kencana/router/RouteUtils.dart';
import 'package:smk_duta_kencana/services/AuthController.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:smk_duta_kencana/services/GetUserController.dart';

// ignore: must_be_immutable
class Home extends StatefulWidget {
  final authc = AuthController();
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GetUserController controller = Get.put(GetUserController());
  var images = [
    "lib/assets/gambar_1.png",
    "lib/assets/fasilitas_kelas.png",
    "lib/assets/fasilitas_kendaraan.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<QuerySnapshot<Object?>>(
      stream: controller.getData(),
      builder: (context, snapshot) {
         var listAllDocs = snapshot.data!.docs;
         if ( listAllDocs.isNotEmpty) {
            return Container(
          padding: EdgeInsets.symmetric(horizontal: 18),
          child: ListView(
            children: [
           
              HeroPageInformation(TEXT.fasilitas.textHeader),
              for (var item in images)InkWell(
                onTap: (){
                       widget.authc.logout();
                }, 
                child: CardFacility(item,"Fasilitas Sekolah")),
              
              
            ],
          ),
          color: HexColor("#FDFDFD"),
        );
         }else{
          return
           Container(
          padding: EdgeInsets.symmetric(horizontal: 18),
          child: ListView(
            children: [
              SizedBox(
                height: 32,
              ),
              Information_alert(
                (){
                  context.pushNamed(APP_PAGE.ppdb.toName).then((_) {
                      context.pop();
                    });
                }
              ),
              HeroPageInformation(TEXT.fasilitas.textHeader),
              for (var item in images)CardFacility(item,"Fasilitas Sekolah"),
              
              
            ],
          ),
          color: HexColor("#FDFDFD"),
        );
         }
      
      },
    ));
  }
}
