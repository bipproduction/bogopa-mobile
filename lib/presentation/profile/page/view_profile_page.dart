import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/constants/colors.dart';
import 'view_edit_info_page.dart';
import 'view_langganan.dart';
import 'view_pengaturan.dart';
import 'view_pengunjung_saya.dart';
import 'view_saya_suka.dart';
import 'view_suka_saya_page.dart';

class ViewProfilePage extends StatelessWidget {
  const ViewProfilePage({super.key});

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
                Get.to(const ViewPengaturan(
                  data: '',
                ));
              },
              child: Assets.icons.setting.svg(
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
                'PROFILE',
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
        ),
        body: const SingleChildScrollView(
          child: ProfilePage(),
        ),
      ),
    );
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
             Row(children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  const CircleAvatar(
                    radius: 64,
                    backgroundColor: AppColors.pink,
                    child: CircleAvatar(
                        radius: 60,
                        backgroundImage:
                            NetworkImage('https://i.pravatar.cc/200?img=4')),
                  ),
                  CircleAvatar(
                      radius: 20,
                      backgroundColor: AppColors.pinkMerah,
                      // ignore: avoid_unnecessary_containers
                      child: Container(
                        child: InkWell(
                          onTap: () {
                            Get.to(const ViewEditInfoPage(
                                    data: '',
                                  ));
                          },
                          child: const CircleAvatar(
                            radius: 18,
                            backgroundColor: AppColors.pinkMerah,
                            child: Icon(
                              Icons.edit,
                              size: 20,
                              color: AppColors.putih,
                            ),
                          ),
                        ),
                      ))
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 60, left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Alam Ganjar',
                          softWrap: false,
                          overflow: TextOverflow.fade,
                          style: TextStyle(
                              fontSize: 16.0,
                              color: AppColors.coklat,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.verified,
                          color: Colors.blue,
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      'ID: 32382727329',
                      softWrap: false,
                      overflow: TextOverflow.fade,
                      style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SizedBox(
                height: 110,
                width: 360,
                child: ListView(
                  // This next line does the trick.
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      width: 250,
                      decoration: BoxDecoration(
                          color: const Color(0xFFD1B378),
                          borderRadius: BorderRadius.circular(15)),
                      margin: const EdgeInsets.all(5),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ListTile(
                          title: Text(
                            'VIP',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 35,
                                color: AppColors.putih),
                          ),
                          subtitle: Text('Harga Rp. 30.000',
                              style: TextStyle(color: AppColors.putih)),
                          trailing: Icon(
                            Icons.star,
                            color: AppColors.putih,
                            size: 50,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 250,
                      decoration: BoxDecoration(
                          color: const Color(0xFFC5C5C5),
                          borderRadius: BorderRadius.circular(15)),
                      margin: const EdgeInsets.all(5),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ListTile(
                          title: Text(
                            'Premium ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: AppColors.putih),
                          ),
                          subtitle: Text('Harga Rp. 50.000',
                              style: TextStyle(color: AppColors.putih)),
                          trailing: Icon(
                            Icons.diamond,
                            color: AppColors.putih,
                            size: 50,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: [
                        Text(
                          'Layanan lainnya',
                          softWrap: false,
                          overflow: TextOverflow.fade,
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.normal)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8.0),
                    Container(
                      height: 360,
                      decoration: const BoxDecoration(
                          color: Color(0xFFC5C5C5),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            // ignore: avoid_unnecessary_containers
                            Container(
                              child: TextButton(
                                style: const ButtonStyle(
                                    padding: MaterialStatePropertyAll(
                                        EdgeInsets.all(0))),
                                onPressed: () {
                                  Get.to(const ViewSukaSayaPage(
                                    data: '',
                                  ));
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                            color: AppColors.putih,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: const Icon(
                                          Icons.sentiment_very_satisfied,
                                          size: 38,
                                          color: AppColors.pinkMerah,
                                        )),
                                    Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Lihat Siapa Suka Saya',
                                            softWrap: false,
                                            overflow: TextOverflow.fade,
                                            style: GoogleFonts.poppins(
                                                textStyle: const TextStyle(
                                                    fontSize: 14.0,
                                                    color: AppColors.coklat,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                          const SizedBox(height: 5),
                                          Row(
                                            children: [
                                              Text(
                                                '159',
                                                softWrap: false,
                                                overflow: TextOverflow.fade,
                                                style: GoogleFonts.poppins(
                                                    textStyle: const TextStyle(
                                                        fontSize: 11.0,
                                                        color:
                                                            AppColors.pinkMerah,
                                                        fontWeight:
                                                            FontWeight.normal)),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                'orang menyukai Anda',
                                                softWrap: false,
                                                overflow: TextOverflow.fade,
                                                style: GoogleFonts.poppins(
                                                    textStyle: const TextStyle(
                                                        fontSize: 11.0,
                                                        color: AppColors.coklat,
                                                        fontWeight:
                                                            FontWeight.normal)),
                                              ),
                                            ],
                                          ),
                                        ]),
                                    ImageFiltered(
                                      imageFilter: ImageFilter.blur(
                                          sigmaX: 3, sigmaY: 3),
                                      child: ClipOval(
                                        child: Image.network(
                                            'https://i.pravatar.cc/50?img=1'),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 30),
                            // ignore: avoid_unnecessary_containers
                            Container(
                              child: TextButton(
                                style: const ButtonStyle(
                                    padding: MaterialStatePropertyAll(
                                        EdgeInsets.all(0))),
                                onPressed: () {
                                  Get.to(const ViewPengunjungSayaPage(
                                    data: '',
                                  ));
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                            color: AppColors.putih,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: const Icon(
                                          Icons.person_search,
                                          size: 38,
                                          color: AppColors.pinkMerah,
                                        )),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Siapa Mengunjungi Saya',
                                            softWrap: false,
                                            overflow: TextOverflow.fade,
                                            style: GoogleFonts.poppins(
                                                textStyle: const TextStyle(
                                                    fontSize: 14.0,
                                                    color: AppColors.coklat,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                          const SizedBox(height: 5),
                                          Row(
                                            children: [
                                              Text(
                                                'Lihat siapa yang mengunjungi profil Anda',
                                                softWrap: false,
                                                overflow: TextOverflow.fade,
                                                style: GoogleFonts.poppins(
                                                    textStyle: const TextStyle(
                                                        fontSize: 10.0,
                                                        color: AppColors.coklat,
                                                        fontWeight:
                                                            FontWeight.normal)),
                                              ),
                                            ],
                                          ),
                                        ]),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 30),
                            // ignore: avoid_unnecessary_containers
                            Container(
                              child: TextButton(
                                style: const ButtonStyle(
                                    padding: MaterialStatePropertyAll(
                                        EdgeInsets.all(0))),
                                onPressed: () {
                                  Get.to(const ViewSayaSukaPage(
                                    data: '',
                                  ));
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                            color: AppColors.putih,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: const Icon(
                                          Icons.favorite,
                                          size: 38,
                                          color: AppColors.pinkMerah,
                                        )),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Saya suka',
                                            softWrap: false,
                                            overflow: TextOverflow.fade,
                                            style: GoogleFonts.poppins(
                                                textStyle: const TextStyle(
                                                    fontSize: 14.0,
                                                    color: AppColors.coklat,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                          const SizedBox(height: 5),
                                          Text(
                                            'Tingkatkan Suka agar orang lain dapat',
                                            softWrap: false,
                                            overflow: TextOverflow.fade,
                                            style: GoogleFonts.poppins(
                                                textStyle: const TextStyle(
                                                    fontSize: 10.0,
                                                    color: AppColors.coklat,
                                                    fontWeight:
                                                        FontWeight.normal)),
                                          ),
                                          Text(
                                            'melihat Anda lebih cepat',
                                            softWrap: false,
                                            overflow: TextOverflow.fade,
                                            style: GoogleFonts.poppins(
                                                textStyle: const TextStyle(
                                                    fontSize: 10.0,
                                                    color: AppColors.coklat,
                                                    fontWeight:
                                                        FontWeight.normal)),
                                          ),
                                        ]),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 30),
                            // ignore: avoid_unnecessary_containers
                            Container(
                              child: TextButton(
                                style: const ButtonStyle(
                                    padding: MaterialStatePropertyAll(
                                        EdgeInsets.all(0))),
                                onPressed: () {
                                  Get.to(const ViewLanggananPage(
                                    data: '',
                                  ));
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                            color: AppColors.putih,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: const Icon(
                                          Icons.diamond,
                                          size: 38,
                                          color: AppColors.pinkMerah,
                                        )),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Langganan',
                                            softWrap: false,
                                            overflow: TextOverflow.fade,
                                            style: GoogleFonts.poppins(
                                                textStyle: const TextStyle(
                                                    fontSize: 14.0,
                                                    color: AppColors.coklat,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                        ]),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
