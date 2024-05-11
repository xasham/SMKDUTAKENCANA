import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddUserController extends GetxController {
  late TextEditingController namac;
  late TextEditingController alamatc;
  late TextEditingController telepon;
  late TextEditingController tanggalc;
  late TextEditingController namaorangtuac;
  late TextEditingController asalsekolahc;
  late TextEditingController alamatsekolahc;
  FirebaseFirestore db = FirebaseFirestore.instance;
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
      
      
    } catch (e) {
      print(e);
  
    }
  
  }

  @override
  void onInit() {
    namac = TextEditingController();
    alamatc = TextEditingController();
    telepon = TextEditingController();
    tanggalc = TextEditingController();
    namaorangtuac = TextEditingController();
    asalsekolahc = TextEditingController();
    alamatsekolahc = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    namac.dispose();
    alamatc.dispose();
    telepon.dispose();
    tanggalc.dispose();
    namaorangtuac.dispose();
    asalsekolahc.dispose();
    alamatsekolahc.dispose();
    super.onClose();
  }
}
