import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/assets/assets.gen.dart';
import 'core/constants/colors.dart';
import 'presentation/auth/login/page/view_login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(const ViewLogin(), transition: Transition.downToUp);
    });
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.images.logoFoto.image(
              width: 180,
              height: 170,
              fit: BoxFit.scaleDown,
            ),
            Text(
              'BOGOPA',
              softWrap: false,
              overflow: TextOverflow.fade,
              style: GoogleFonts.ranchers(
                  textStyle: const TextStyle(
                      fontSize: 18.0,
                      color: AppColors.coklat,
                      fontWeight: FontWeight.bold)),
            ),
          ],
                ),
        ),
      )
    );
  }
}
