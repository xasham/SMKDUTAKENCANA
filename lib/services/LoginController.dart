import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';



class LoginController extends GetxController{
   TextEditingController passc = TextEditingController();
   TextEditingController emailc = TextEditingController();

void close(){
  passc.dispose();
  emailc.dispose();
  super.onClose();
}
  
}