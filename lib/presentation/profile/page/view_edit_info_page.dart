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
                  onPressed: () {
                    Get.back();
                  },
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
          body: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
            child: Column(
              children: [
                GridView.count(
                  primary: false,
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      child: Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        fit: StackFit.expand,
                        children: <Widget>[
                          // ignore: avoid_unnecessary_containers
                          Container(
                              child: InkWell(
                            onTap: () {},
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                    'https://i.pravatar.cc/200?img=4')),
                          )),
                          Container(
                              alignment: Alignment.bottomRight,
                              child: const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.all(0),
                                      child: CircleAvatar(
                                        radius: 12,
                                        backgroundColor: AppColors.putih,
                                        child: Icon(
                                          Icons.close,
                                          size: 18,
                                          color: AppColors.pinkMerah,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      child: Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        fit: StackFit.passthrough,
                        children: <Widget>[
                          // ignore: avoid_unnecessary_containers
                          Container(
                              child: InkWell(
                            onTap: () {},
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                    'https://i.pravatar.cc/200?img=3')),
                          )),
                          Container(
                              alignment: Alignment.bottomRight,
                              child: const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.all(0),
                                      child: CircleAvatar(
                                        radius: 12,
                                        backgroundColor: AppColors.putih,
                                        child: Icon(
                                          Icons.close,
                                          size: 18,
                                          color: AppColors.pinkMerah,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      child: Stack(
                        alignment: AlignmentDirectional.bottomCenter,
                        fit: StackFit.expand,
                        children: <Widget>[
                          // ignore: avoid_unnecessary_containers
                          Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppColors.pinkMerah),
                              alignment: Alignment.center,
                              child: const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.all(0),
                                      child: CircleAvatar(
                                        radius: 25,
                                        backgroundColor: AppColors.putih,
                                        child: Icon(
                                          Icons.add,
                                          size: 30,
                                          color: AppColors.pinkMerah,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Alam Ganjar',
                              softWrap: false,
                              overflow: TextOverflow.fade,
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontSize: 16.0,
                                    color: AppColors.coklat,
                                    fontWeight: FontWeight.bold),
                              )),
                          const SizedBox(width: 10),
                          Text('20',
                              softWrap: false,
                              overflow: TextOverflow.fade,
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontSize: 16.0,
                                    color: AppColors.coklat,
                                    fontWeight: FontWeight.bold),
                              )),
                          const SizedBox(width: 5),
                          const Icon(
                            Icons.verified,
                            color: Colors.blue,
                          )
                        ],
                      ),
                      const SizedBox(height: 5),
                      Text('Aktif 1 menit lalu',
                          softWrap: false,
                          overflow: TextOverflow.fade,
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 13.0,
                                color: AppColors.coklat,
                                fontWeight: FontWeight.normal),
                          )),
                      const SizedBox(height: 30),
                      Text('Tentang Saya',
                          softWrap: false,
                          overflow: TextOverflow.fade,
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 14.0,
                                color: AppColors.pinkMerah,
                                fontWeight: FontWeight.normal),
                          )),
                      const SizedBox(height: 15),
                      InkWell(
                        onTap: () {},
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.edit_square,
                                size: 25,
                                color: AppColors.coklat,
                              ),
                              const SizedBox(width: 20),
                              Text(
                                'Sembuyikan yang Terakhir Dilihat',
                                softWrap: false,
                                overflow: TextOverflow.fade,
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontSize: 12.0,
                                        color: AppColors.coklat,
                                        fontWeight: FontWeight.normal)),
                              ),
                            ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Akun Saya',
                              softWrap: false,
                              overflow: TextOverflow.fade,
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 20.0,
                                      color: AppColors.coklat,
                                      fontWeight: FontWeight.bold)),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              'ID: 32382727329',
                              softWrap: false,
                              overflow: TextOverflow.fade,
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 13.0,
                                      color: AppColors.coklat,
                                      fontWeight: FontWeight.normal)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
