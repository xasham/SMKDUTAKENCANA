import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class AddUserController extends GetxController {
  late TextEditingController namac = TextEditingController();
  late TextEditingController alamatc = TextEditingController();
  late TextEditingController telepon = TextEditingController();
  late TextEditingController tanggalc = TextEditingController();
  late TextEditingController namaorangtuac = TextEditingController();
  late TextEditingController asalsekolahc = TextEditingController();
  late TextEditingController alamatsekolahc = TextEditingController();

  FirebaseFirestore db = FirebaseFirestore.instance;
   bool is_notif = false;
  void add(String nama, String alamat, String telpon, String tanggal,
      String namaorangtua, String asalsekolah, String alamatsekolah) async {
    CollectionReference users = db.collection("user");
  
    try {
      await users.add({
        "Nama": nama,
        "Alamat": alamat,
        "Telpon": telpon,
        "tanggal": tanggal,
        "Namaorangtua": namaorangtua,
        "Asalsekolah": asalsekolah,
        "Alamatsekolah": alamatsekolah
      });
      clear();
    // is_notif = true;
    // notifyListeners();

    // Get.defaultDialog(
    //   title: "Halo",
    //   middleText: "aalal",
    //   onConfirm: (){
    //     Get.back();
    //   }

    // );
     
    } catch (e) {
      print(e);
    }
  }
  

  clear(){
     namac.clear();
      alamatc.clear();
      telepon.clear();
      tanggalc.clear();
      namaorangtuac.clear();
      asalsekolahc.clear();
      alamatsekolahc.clear();
  }
  @override
  onClose() {
    namac.dispose();
    alamatc.dispose();
    telepon.dispose();
    tanggalc.dispose();
    namaorangtuac.dispose();
    asalsekolahc.dispose();
    alamatsekolahc.dispose();
    super.onClose();
  }
   void defaultDailog() {
    Future.delayed(const Duration(seconds: 1), () {
      print(Get.isDialogOpen);
    });

    Get.defaultDialog(
        title: 'GetX alert', middleText: 'Hello, here is dialog in getx');
  }
}
