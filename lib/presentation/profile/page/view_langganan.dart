import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/constants/colors.dart';

class ViewLanggananPage extends StatelessWidget {
  const ViewLanggananPage({super.key, required this.data});

  final String? data;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: AppColors.putih,
          appBar: AppBar(
            backgroundColor: AppColors.putih,
            title: Text(
              'Langganan',
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
          body: const LanggananPage()),
    );
  }
}

class LanggananPage extends StatefulWidget {
  const LanggananPage({super.key});

  @override
  State<LanggananPage> createState() => _LanggananPageState();
}

class _LanggananPageState extends State<LanggananPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}