import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:smk_duta_kencana/router/Routes.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';


late final app;
late final auth;
bool shouldUseFirebaseEmulator = false;
WidgetsBinding widgetsBindings = WidgetsFlutterBinding.ensureInitialized();


Future <void> main() async{
  widgetsBindings;
  app = await Firebase.initializeApp();
  auth = FirebaseAuth.instanceFor(app: app);

  if (shouldUseFirebaseEmulator == true) {
    await auth.useAuthEmulator('localhost', 9099);
  }
  else{
    print("no device");
  }
  
  initialization();
  runApp(Routes()); 
   
}
initialization(){
    
    FlutterNativeSplash.preserve(widgetsBinding: widgetsBindings);
    FlutterNativeSplash.remove();
}