import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/assets/assets.gen.dart';
import '../../../../core/constants/colors.dart';
import 'view_tampil_foto.dart';

class ViewInputFoto extends StatelessWidget {
  const ViewInputFoto({super.key, required this.data});

  final String? data;

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
                child: Assets.icons.back.svg(height: 38, width: 38),
              );
            },
          ),
        ),
        body: const SingleChildScrollView(
          child: DataInputFoto(),
        ),
      ),
    );
  }
}

class DataInputFoto extends StatefulWidget {
  const DataInputFoto({super.key});

  @override
  State<DataInputFoto> createState() => _DataInputFotoState();
}

class _DataInputFotoState extends State<DataInputFoto> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Column(
                children: [
                  Assets.images.logoFoto.image(
                    width: 130,
                    height: 120,
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
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                children: [
                  Text(
                    'Foto Profile',
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 16,
                            color: AppColors.coklat,
                            fontWeight: FontWeight.w500)),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Center(
                child: Assets.icons.phone.svg(
                    width: 100,
                    height: 100,
                    // ignore: deprecated_member_use_from_same_package
                    color: AppColors.coklat),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Silahkan unggah',
                      softWrap: false,
                      overflow: TextOverflow.fade,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 13,
                              color: AppColors.coklat,
                              fontWeight: FontWeight.normal)),
                    ),
                    const Text(' '),
                    Text(
                      'foto yang memperlihatkan ',
                      softWrap: false,
                      overflow: TextOverflow.fade,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 13,
                              color: AppColors.pinkMerah,
                              fontWeight: FontWeight.normal)),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'wajahmu secara jelas.',
                      softWrap: false,
                      overflow: TextOverflow.fade,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 13,
                              color: AppColors.pinkMerah,
                              fontWeight: FontWeight.normal)),
                    ),
                    const Text(' '),
                    Text(
                      'Lihat contoh berikut.',
                      softWrap: false,
                      overflow: TextOverflow.fade,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 13,
                              color: AppColors.coklat,
                              fontWeight: FontWeight.normal)),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 0, vertical: 30),
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(const ViewTampilFoto(
                          data: '',
                        ), transition: Transition.noTransition);
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(70),
                      backgroundColor: AppColors.pinkMerah,
                      foregroundColor: AppColors.putih,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0)))),
                  child: Text('tambahkan foto'.toUpperCase(),
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500))),
                )),
            Padding(
                padding:
                   const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Assets.images.fotoDepan.image(
                        width: 103,
                        height: 110,
                      ),
                      Assets.images.fotoBelakang.image(
                        width: 103,
                        height: 110,
                      ),
                      Assets.images.fotoPemandangan.image(
                        width: 103,
                        height: 110,
                      ),
                    ]))
          ],
        )));
  }
}
