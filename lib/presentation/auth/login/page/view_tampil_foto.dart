import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/assets/assets.gen.dart';
import '../../../../core/constants/colors.dart';
import '../../../dashboard_page/dashboard_page.dart';

class ViewTampilFoto extends StatelessWidget {
  const ViewTampilFoto({super.key, required this.data});

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
          child: DataTampilFoto(),
        ),
      ),
    );
  }
}

class DataTampilFoto extends StatefulWidget {
  const DataTampilFoto({super.key});

  @override
  State<DataTampilFoto> createState() => _DataTampilFotoState();
}

class _DataTampilFotoState extends State<DataTampilFoto> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: Column(
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
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  Assets.images.fotoUser.image(
                    width: 334,
                    height: 367,
                    fit: BoxFit.scaleDown,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Get.to(const DashboardPage(
                        key: Key(''),currentTab: 0,

                      ), transition: Transition.noTransition);
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(60),
                        backgroundColor: AppColors.pinkMerah,
                        foregroundColor: AppColors.putih,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0)))),
                    child: Text('masuk'.toUpperCase(),
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500))),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
