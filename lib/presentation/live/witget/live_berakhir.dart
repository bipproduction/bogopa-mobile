import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constants/colors.dart';
import '../../dashboard_page/dashboard_page.dart';

class LiveBerakhir extends StatefulWidget {
  const LiveBerakhir({super.key});

  @override
  State<LiveBerakhir> createState() => _LiveBerakhirState();
}

class _LiveBerakhirState extends State<LiveBerakhir> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {
                      Get.to(const DashboardPage(
                        currentTab: 1,
                      ));
                    },
                    child: const Icon(
                      Icons.close,
                      color: AppColors.coklat,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'LIVE Berakhir',
              softWrap: false,
              overflow: TextOverflow.fade,
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontSize: 24.0,
                      color: AppColors.coklat,
                      fontWeight: FontWeight.normal)),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'Durasi SIARAN: 00.00.33',
              softWrap: false,
              overflow: TextOverflow.fade,
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontSize: 14.0,
                      color: AppColors.coklat,
                      fontWeight: FontWeight.normal)),
            ),
            const SizedBox(
              height: 20,
            ),
            const CircleAvatar(
              radius: 70,
              backgroundColor: AppColors.pink,
              child: CircleAvatar(
                radius: 67,
                backgroundImage:
                    NetworkImage('https://i.pravatar.cc/100?img=3'),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Alam Ganjar',
              softWrap: false,
              overflow: TextOverflow.fade,
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontSize: 20.0,
                      color: AppColors.coklat,
                      fontWeight: FontWeight.normal)),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  
                  children: <Widget>[
                    Text(
                      '1',
                      softWrap: false,
                      overflow: TextOverflow.fade,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 48.0,
                              color: AppColors.coklat,
                              fontWeight: FontWeight.normal)),
                    ),
                    Text(
                      'Jumlah LIVE',
                      softWrap: false,
                      overflow: TextOverflow.fade,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 20.0,
                              color: AppColors.coklat,
                              fontWeight: FontWeight.normal)),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      '0',
                      softWrap: false,
                      overflow: TextOverflow.fade,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 48.0,
                              color: Colors.red,
                              fontWeight: FontWeight.normal)),
                    ),
                    Text(
                      'Suka',
                      softWrap: false,
                      overflow: TextOverflow.fade,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 20.0,
                              color: AppColors.coklat,
                              fontWeight: FontWeight.normal)),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  
                  children: <Widget>[
                    Text(
                      '1',
                      softWrap: false,
                      overflow: TextOverflow.fade,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 32.0,
                              color: AppColors.coklat,
                              fontWeight: FontWeight.normal)),
                    ),
                    Text(
                      'Penonton',
                      softWrap: false,
                      overflow: TextOverflow.fade,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 15.0,
                              color: AppColors.coklat,
                              fontWeight: FontWeight.normal)),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      '0',
                      softWrap: false,
                      overflow: TextOverflow.fade,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 32.0,
                              color: AppColors.coklat,
                              fontWeight: FontWeight.normal)),
                    ),
                    Text(
                      'Pengikut Baru',
                      softWrap: false,
                      overflow: TextOverflow.fade,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 15.0,
                              color: AppColors.coklat,
                              fontWeight: FontWeight.normal)),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
