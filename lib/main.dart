import 'package:dashboard/Screens/AuthenticationPage.dart';
import 'package:dashboard/Screens/SplashScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: 'AIzaSyBIMGhSD97fS_U6A2eoMwW-zQ7-mIFrrr8',
          appId: '1:546817729517:web:eb5ed323a6b3470c297de4',
          messagingSenderId: '546817729517',
          projectId: 'dashboard-9d4de',
          storageBucket: 'dashboard-9d4de.appspot.com',
          authDomain: 'dashboard-9d4de.firebaseapp.com'));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dashboard',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
      builder: EasyLoading.init(),
    );
  }
}
