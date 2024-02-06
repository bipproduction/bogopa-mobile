import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/assets/assets.gen.dart';
import '../../../core/constants/colors.dart';
import '../widget/jarak.dart';
import '../widget/logout_dialog.dart';
import '../widget/usia.dart';

const List<String> list = <String>[ 'Wanita', 'Laki-Laki'];

class ViewPengaturan extends StatelessWidget {
  const ViewPengaturan({super.key, required this.data});

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
          child: ViewPengaturanPage(),
        ),
      ),
    );
  }
}

class ViewPengaturanPage extends StatefulWidget {
  const ViewPengaturanPage({
    super.key,
  });

  @override
  State<ViewPengaturanPage> createState() => _ViewPengaturanPageState();
}

class _ViewPengaturanPageState extends State<ViewPengaturanPage> {
  bool _checkbox = false;
  String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              const SizedBox(
                height: 25,
              ),
              Row(
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
              const SizedBox(
                height: 30,
              ),
              Row(
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
              const JaratWidget(),
              const SizedBox(
                height: 20,
              ),
              Row(
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
                  DropdownButton<String>(
                    value: dropdownValue,
                    elevation: 20,
                    style: const TextStyle(color: Colors.deepPurple),
                    underline: Container(
                      height: 2,
                      color: Colors.white,
                    ),
                    onChanged: (String? value) {
                      // This is called when the user selects an item.
                      setState(() {
                        dropdownValue = value!;
                      });
                    },
                    items: list.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                    value,
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 14.0,
                            color: AppColors.pinkMerah,
                            fontWeight: FontWeight.normal)),
                  ),
                      );
                    }).toList(),
                  )
                  
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
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
                    '20 - 30',
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
              const UsiaWidget(),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
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
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              width: 20,
                              height: 13,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  color: const Color(0xFFAF810B)),
                              child: const Center(
                                child: Text(
                                  'VIP',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 8,
                                      color: AppColors.putih),
                                ),
                              ),
                            )
                          ],
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
                        Row(
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
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              width: 20,
                              height: 13,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  color: const Color(0xFFAF810B)),
                              child: const Center(
                                  child: Icon(
                                Icons.diamond,
                                color: Colors.white,
                                size: 10,
                              )),
                            )
                          ],
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
          padding: const EdgeInsets.only(top: 100, left: 15, right: 15),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => const CustomDialogLogout());
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(60),
                      backgroundColor: AppColors.pinkMerah,
                      foregroundColor: AppColors.putih,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                  child: Text('LOGOUT'.toUpperCase(),
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500))),
                )
              ]),
        )
      ],
    );
  }
}
