import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/constants/colors.dart';

class ViewEditInfoPage extends StatelessWidget {
  const ViewEditInfoPage({super.key, required this.data});

  final String? data;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: AppColors.putih,
          appBar: AppBar(
            backgroundColor: AppColors.putih,
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  // Get.to(const ViewPengaturan(
                  //   data: '',
                  // ));
                },
                child: FilledButton(
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(AppColors.pinkMerah)),
                  onPressed: () {},
                  child: Text(
                    'Selesai',
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 16.0,
                            color: AppColors.putih,
                            fontWeight: FontWeight.normal)),
                  ),
                ),
              )
            ],
            title: Text(
              'Edit info',
              softWrap: false,
              overflow: TextOverflow.fade,
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontSize: 16.0,
                      color: AppColors.coklat,
                      fontWeight: FontWeight.bold)),
            ),
            leading: Builder(
              builder: (BuildContext context) {
                return TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Assets.icons.back.svg(height: 38, width: 38),
                );
              },
            ),
          ),
          body: const EditInfoPage()),
    );
  }
}

class EditInfoPage extends StatefulWidget {
  const EditInfoPage({super.key});

  @override
  State<EditInfoPage> createState() => _EditInfoPageState();
}

class _EditInfoPageState extends State<EditInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
