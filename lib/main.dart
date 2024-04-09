import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:wypedriver/apps/views/auth_view.dart';
import 'package:wypedriver/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBJ3bce-RZgcvK853HIP_SqtUZ6kPYB5OA",
            authDomain: "wypeadmin.firebaseapp.com",
            projectId: "wypeadmin",
            storageBucket: "wypeadmin.appspot.com",
            messagingSenderId: "228853359778",
            appId: "1:228853359778:web:c772856ecb2a9516c7e3fb",
            measurementId: "G-8WK85659ND"));
  } else {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(fontFamily: GoogleFonts.readexPro().fontFamily
              // primaryTextTheme: GoogleFonts.readexProTextTheme(),
              // textTheme: GoogleFonts.readexProTextTheme(),
              ),
          title: 'Flutter Demo',
          home: const AuthView()),
    );
  }
}
