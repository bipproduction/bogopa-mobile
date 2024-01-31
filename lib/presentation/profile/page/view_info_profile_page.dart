import 'package:bogopa_mobile/presentation/profile/page/view_edit_info_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/constants/colors.dart';

class ViewInfoProfilePage extends StatelessWidget {
  const ViewInfoProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: AppColors.putih,
            appBar: AppBar(
              backgroundColor: AppColors.putih,
              title: Text(
                'Info Profile',
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
            body: const SingleChildScrollView(child: InfoProfilePage())));
  }
}

class InfoProfilePage extends StatefulWidget {
  const InfoProfilePage({super.key});

  @override
  State<InfoProfilePage> createState() => _InfoProfilePageState();
}

class _InfoProfilePageState extends State<InfoProfilePage> {
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
                    child: Image.network('https://i.pravatar.cc/500?img=4')),
              ),
              Container(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Get.to(
                                const ViewEditInfoPage(
                                  data: '',
                                ),
                                transition: Transition.noTransition);
                          },
                          child: const Padding(
                            padding: EdgeInsets.all(0),
                            child: Icon(
                              Icons.edit_square,
                              size: 35,
                              color: AppColors.putih,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
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
                      'Alam Ganjar',
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
                Text('Aktif 1 menit lalu',
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 13.0,
                          color: AppColors.coklat,
                          fontWeight: FontWeight.normal),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.sentiment_very_satisfied,
                            size: 38,
                            color: AppColors.pinkMerah,
                          ),
                          const SizedBox(width: 20),
                          Text(
                            '159 Suka',
                            softWrap: false,
                            overflow: TextOverflow.fade,
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontSize: 14.0,
                                    color: AppColors.coklat,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'SIAPA SUKA SAYA?',
                          softWrap: false,
                          overflow: TextOverflow.fade,
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 14.0,
                                  color: AppColors.coklat,
                                  fontWeight: FontWeight.bold)),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.diamond,
                            size: 38,
                            color: AppColors.pinkMerah,
                          ),
                          const SizedBox(width: 20),
                          Text(
                            'Non-VIP',
                            softWrap: false,
                            overflow: TextOverflow.fade,
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontSize: 14.0,
                                    color: AppColors.coklat,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'Lihat Keistimewaan',
                          softWrap: false,
                          overflow: TextOverflow.fade,
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 14.0,
                                  color: AppColors.coklat,
                                  fontWeight: FontWeight.bold)),
                        ),
                      )
                    ],
                  ),
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
