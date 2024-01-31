import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/constants/colors.dart';

class ViewInfoProfileUserPage extends StatelessWidget {
  const ViewInfoProfileUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: AppColors.putih,
            appBar: AppBar(
              backgroundColor: AppColors.putih,
              title: Text(
                'Profile User',
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
            body: const SingleChildScrollView(child: InfoProfileUserPage())));
  }
}

class InfoProfileUserPage extends StatefulWidget {
  const InfoProfileUserPage({super.key});

  @override
  State<InfoProfileUserPage> createState() => _InfoProfileUserPageState();
}

class _InfoProfileUserPageState extends State<InfoProfileUserPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            fit: StackFit.passthrough,
            children: <Widget>[
              // ignore: avoid_unnecessary_containers
              Container(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(0),
                    child: Image.network('https://i.pravatar.cc/500?img=1')),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Sarah',
                      softWrap: false,
                      overflow: TextOverflow.fade,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 20.0,
                              color: AppColors.coklat,
                              fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      '20',
                      softWrap: false,
                      overflow: TextOverflow.fade,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 20.0,
                              color: AppColors.coklat,
                              fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(width: 5),
                    const Icon(
                      Icons.verified,
                      color: Colors.blue,
                    )
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Text('Denpasar Barat',
                        softWrap: false,
                        overflow: TextOverflow.fade,
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 13.0,
                              color: AppColors.coklat,
                              fontWeight: FontWeight.normal),
                        )),
                    const SizedBox(width: 15),
                    Text('Aktif 1 menit lalu',
                        softWrap: false,
                        overflow: TextOverflow.fade,
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 13.0,
                              color: Colors.grey,
                              fontWeight: FontWeight.normal),
                        )),
                  ],
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
          )
        ],
      ),
    );
  }
}
