import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/constants/colors.dart';
import '../widget/dialog_suka_saya/dialog_suka_suka.dart';

class ViewSukaSayaPage extends StatelessWidget {
  const ViewSukaSayaPage({super.key, required this.data});

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
              'Disukai(159)',
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
          body: const SukaSataPage()),
    );
  }
}

class SukaSataPage extends StatefulWidget {
  const SukaSataPage({super.key});

  @override
  State<SukaSataPage> createState() => _SukaSataPageState();
}

class _SukaSataPageState extends State<SukaSataPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: SizedBox(
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(10),
          crossAxisCount: 2,
          children: [
            Container(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) => const CustomDialogSukaSaya());
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: ImageFiltered(
                      imageFilter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Image.network('https://i.pravatar.cc/200?img=2'),
                    ),
                  ),
                )),
            Container(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                 onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) => const CustomDialogSukaSaya());
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: ImageFiltered(
                      imageFilter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Image.network('https://i.pravatar.cc/200?img=1'),
                    ),
                  ),
                )),
            Container(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                 onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) => const CustomDialogSukaSaya());
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: ImageFiltered(
                      imageFilter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Image.network('https://i.pravatar.cc/200?img=3'),
                    ),
                  ),
                )),
            Container(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                 onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) => const CustomDialogSukaSaya());
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: ImageFiltered(
                      imageFilter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Image.network('https://i.pravatar.cc/200?img=4'),
                    ),
                  ),
                )),
            Container(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) => const CustomDialogSukaSaya());
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: ImageFiltered(
                      imageFilter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Image.network('https://i.pravatar.cc/200?img=5'),
                    ),
                  ),
                )),
            Container(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                 onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) => const CustomDialogSukaSaya());
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: ImageFiltered(
                      imageFilter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Image.network('https://i.pravatar.cc/200?img=6'),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
