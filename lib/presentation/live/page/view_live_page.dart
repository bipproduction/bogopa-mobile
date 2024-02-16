import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/constants/colors.dart';
import '../witget/judul_dan_start.dart';
import '../witget/rekomendasi_page.dart';
import '../witget/sekitar_page.dart';

class ViewLivePage extends StatefulWidget {
  const ViewLivePage({super.key});

  @override
  State<ViewLivePage> createState() => _ViewLivePageState();
}

class _ViewLivePageState extends State<ViewLivePage> {
  @override
  void initState() {
    load();
    super.initState();
  }

  load() async {
    var status = await Permission.camera.status;
    if (status.isDenied) {
      log("message: Permission denied");
    }
    await Permission.camera.request();
    await Permission.microphone.request();
  }

  @override
  Widget build(BuildContext context) {
    return const Lama();
  }
}

class Lama extends StatelessWidget {
  const Lama({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: AppColors.putih,
          appBar: AppBar(
            backgroundColor: AppColors.putih,
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Get.to(const JudulDanStart());
                },
                child: Assets.icons.live.svg(
                    height: 24,
                    width: 24,
                    // ignore: deprecated_member_use_from_same_package
                    color: AppColors.coklat),
              )
            ],
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'LIVE BOGOPA',
                  softWrap: false,
                  overflow: TextOverflow.fade,
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 26.0,
                          color: AppColors.coklat,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            bottom: const TabBar(
              indicatorColor: AppColors.pinkMerah,
              labelColor: AppColors.pinkMerah,
              unselectedLabelColor: AppColors.coklat,
              dividerColor: Colors.transparent,
              tabs: [
                Tab(text: 'Rekomendasi'),
                Tab(text: 'Sekitar'),
              ],
            ),
          ),
          body: const TabBarView(children: [
            RekomendasiPage(),
            SekitarPage(),
          ]),
        ),
      ),
    );
  }
}
