import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class GetUserController extends GetxController{
   FirebaseFirestore db = FirebaseFirestore.instance;

   Future<QuerySnapshot<Object?>> getData() async {
      CollectionReference user = db.collection("user");

      return user.get();
   }
}