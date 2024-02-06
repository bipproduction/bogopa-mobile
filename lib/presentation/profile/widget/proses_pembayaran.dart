import 'package:bogopa_mobile/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProsesPembayaran extends StatelessWidget {
  const ProsesPembayaran({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: AppColors.putih,
          appBar: AppBar(
            backgroundColor: AppColors.putih,
            leading: Builder(
              builder: (BuildContext context) {
                return TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: const Icon(Icons.close),
                );
              },
            ),
          ),
        ));
  }
}
