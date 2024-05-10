import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smk_duta_kencana/component/Button.dart';
import 'package:smk_duta_kencana/component/FormFields.dart';
import 'package:smk_duta_kencana/component/HeroPageInformation.dart';
import 'package:smk_duta_kencana/component/TextHeader.dart';
import 'package:smk_duta_kencana/services/AddUserController.dart';

class Pendaftaran extends GetView<AddUserController>{
   

  AddUserController controller = Get.put(AddUserController());
  
  final key1 = GlobalKey<FormState>();
  final key2 = GlobalKey<FormState>();
  final key3 = GlobalKey<FormState>();
  final key4 = GlobalKey<FormState>();
  final key5 = GlobalKey<FormState>();
  final key6 = GlobalKey<FormState>();
  final key7 = GlobalKey<FormState>();
  final key8 = GlobalKey<FormState>();
  final key9 = GlobalKey<FormState>();
  final key10 = GlobalKey<FormState>();
  final key11 = GlobalKey<FormState>();
  final key12 = GlobalKey<FormState>();
  final key13 = GlobalKey<FormState>();
  final key14 = GlobalKey<FormState>();
  //  final userController  = Get.put(UserController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: ListView(
          children: [
            
            HeroPageInformation("Pendaftaran"),
            TextHeader("",
                "Silahkan masukan data diri anda disini, kami akan merekam data anda sebagai data siswa baru"),
            SizedBox(
              height: 12,
            ),
            FormFields("Nama", false, controller.namac, key1, key2),
            SizedBox(
              height: 12,
            ),
            FormFields("Alamat", false, controller.alamatc, key3, key4),
            SizedBox(
              height: 12,
            ),
            FormFields(
                "Tanggal lahir", false, controller.tanggalc, key5, key6),
            SizedBox(
              height: 12,
            ),
            FormFields("Telepone", false, controller.telepon, key7, key8),
            SizedBox(
              height: 12,
            ),
            FormFields("Nama orang tua", false, controller.namaorangtuac,
                key9, key10),
            SizedBox(
              height: 12,
            ),
            FormFields("Asal sekolah", false, controller.asalsekolahc,
                key11, key12),
            SizedBox(
              height: 12,
            ),
            FormFields("Alamat sekolah", false, controller.alamatsekolahc,
                key13, key14),
            SizedBox(
              height: 12,
            ),
            Button("Daftar sekarang", () {
              controller.add(
                  controller.namac.text,
                  controller.alamatc.text,
                  int.parse(controller.telepon.text),
                  controller.tanggalc.text,
                  controller.namaorangtuac.text,
                  controller.asalsekolahc.text,
                  controller.alamatsekolahc.text);
            }),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
