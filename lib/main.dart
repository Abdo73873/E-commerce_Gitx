import 'package:ecommerce_app/helper/binding.dart';
import 'package:ecommerce_app/view/auth/login_view.dart';
import 'package:ecommerce_app/view/control_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: Binding(),
      home: LoginView(),
      theme: ThemeData(
        fontFamily: 'SourceSans',
      ),
    );
  }
}


//keytool -exportcert -alias upload -keystore "C:/Users/Abdo/StudioProjects/e_commerce/android/key.jks" | "C:\Users\Abdo\openssl-0.9.8k_WIN32\bin\openssl" sha1 -binary | "C:\Users\Abdo\openssl-0.9.8k_WIN32\bin\openssl" base64