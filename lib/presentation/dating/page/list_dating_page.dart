import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/constants/colors.dart';

class ListDating extends StatelessWidget {
  const ListDating({super.key, required this.data});

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
          child: ViewListDating(),
        ),
      ),
    );
  }
}

class ViewListDating extends StatefulWidget {
  const ViewListDating({
    super.key,
  });

  @override
  State<ViewListDating> createState() => _ViewListDatingState();
}

class _ViewListDatingState extends State<ViewListDating> {
  bool _checkbox = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Tampilan Pengaturan Pengguna',
                softWrap: false,
                overflow: TextOverflow.fade,
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 14.0,
                        color: AppColors.pinkMerah,
                        fontWeight: FontWeight.normal)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Lokasi',
                      softWrap: false,
                      overflow: TextOverflow.fade,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 14.0,
                              color: AppColors.coklat,
                              fontWeight: FontWeight.normal)),
                    ),
                    const Spacer(),
                    Text(
                      'Sesuaikan Lokasi',
                      softWrap: false,
                      overflow: TextOverflow.fade,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 14.0,
                              color: AppColors.pinkMerah,
                              fontWeight: FontWeight.normal)),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Jarak',
                      softWrap: false,
                      overflow: TextOverflow.fade,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 14.0,
                              color: AppColors.coklat,
                              fontWeight: FontWeight.normal)),
                    ),
                    const Spacer(),
                    Text(
                      '75Km',
                      softWrap: false,
                      overflow: TextOverflow.fade,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 14.0,
                              color: AppColors.pinkMerah,
                              fontWeight: FontWeight.normal)),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Tampilkan',
                      softWrap: false,
                      overflow: TextOverflow.fade,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 14.0,
                              color: AppColors.coklat,
                              fontWeight: FontWeight.normal)),
                    ),
                    const Spacer(),
                    Text(
                      'Wanita',
                      softWrap: false,
                      overflow: TextOverflow.fade,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 14.0,
                              color: AppColors.pinkMerah,
                              fontWeight: FontWeight.normal)),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Usia',
                      softWrap: false,
                      overflow: TextOverflow.fade,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 14.0,
                              color: AppColors.coklat,
                              fontWeight: FontWeight.normal)),
                    ),
                    const Spacer(),
                    Text(
                      '20 - 25',
                      softWrap: false,
                      overflow: TextOverflow.fade,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 14.0,
                              color: AppColors.pinkMerah,
                              fontWeight: FontWeight.normal)),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Berbayar',
                          softWrap: false,
                          overflow: TextOverflow.fade,
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 12.0,
                                  color: AppColors.pinkMerah,
                                  fontWeight: FontWeight.normal)),
                        ),
                        Text(
                          'Pengaturan Privasi',
                          softWrap: false,
                          overflow: TextOverflow.fade,
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 14.0,
                                  color: AppColors.coklat,
                                  fontWeight: FontWeight.normal)),
                        ),
                        Text(
                          'Sembuyikan yang Terakhir Dilihat',
                          softWrap: false,
                          overflow: TextOverflow.fade,
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 14.0,
                                  color: AppColors.coklat,
                                  fontWeight: FontWeight.normal)),
                        ),
                        Text(
                          'Agar orang tidak melihatmu ketika kamu online',
                          softWrap: false,
                          overflow: TextOverflow.fade,
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 9.0,
                                  color: AppColors.coklat,
                                  fontWeight: FontWeight.normal)),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          Checkbox(
                              fillColor:
                                  MaterialStateProperty.resolveWith((states) {
                                if (!states.contains(MaterialState.selected)) {
                                  return Colors.transparent;
                                }
                                return null;
                              }),
                              side: const BorderSide(
                                  color: AppColors.pinkMerah, width: 1),
                              value: _checkbox,
                              onChanged: (value) {
                                setState(() {
                                  _checkbox = !_checkbox;
                                });
                              })
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Berbayar',
                          softWrap: false,
                          overflow: TextOverflow.fade,
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 12.0,
                                  color: AppColors.pinkMerah,
                                  fontWeight: FontWeight.normal)),
                        ),
                        Text(
                          'Hanya tampilkan pengguna yang',
                          softWrap: false,
                          overflow: TextOverflow.fade,
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 14.0,
                                  color: AppColors.coklat,
                                  fontWeight: FontWeight.normal)),
                        ),
                        Text(
                          'telah diverifikasi ',
                          softWrap: false,
                          overflow: TextOverflow.fade,
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 14.0,
                                  color: AppColors.coklat,
                                  fontWeight: FontWeight.normal)),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          Checkbox(
                              fillColor:
                                  MaterialStateProperty.resolveWith((states) {
                                if (!states.contains(MaterialState.selected)) {
                                  return Colors.transparent;
                                }
                                return null;
                              }),
                              side: const BorderSide(
                                  color: AppColors.pinkMerah, width: 1),
                              value: _checkbox,
                              onChanged: (value) {
                                setState(() {
                                  _checkbox = !_checkbox;
                                });
                              })
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // const Spacer(),
            ],
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dating Apps V.1.0.0',
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 11,
                            color: AppColors.coklat,
                            fontWeight: FontWeight.normal)),
                  )
                ]),
          )
      ],
    );
  }
}
