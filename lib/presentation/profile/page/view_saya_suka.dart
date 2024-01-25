

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/constants/colors.dart';

class ViewSayaSukaPage extends StatelessWidget {
  const ViewSayaSukaPage({super.key, required this.data});

  final String? data;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: AppColors.putih,
          appBar: AppBar(
            backgroundColor: AppColors.putih,
            title: Text(
              'Saya suka',
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
          body: const SayaSukaPage()),
    );
  }
}

class SayaSukaPage extends StatefulWidget {
  const SayaSukaPage({super.key});

  @override
  State<SayaSukaPage> createState() => _SayaSukaPageState();
}

class _SayaSukaPageState extends State<SayaSukaPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
      child: Expanded(
          child: Column(
        children: <Widget>[
          Text(
            "Tingkatkan Suka agar orang lain dapat,",
            textAlign: TextAlign.justify,
            softWrap: false,
            overflow: TextOverflow.fade,
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    fontSize: 13.0,
                    color: AppColors.pinkMerah,
                    fontWeight: FontWeight.bold)),
          ),
          Text(
            "melihat Anda lebih cepat",
            textAlign: TextAlign.justify,
            softWrap: false,
            overflow: TextOverflow.fade,
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    fontSize: 13.0,
                    color: AppColors.pinkMerah,
                    fontWeight: FontWeight.bold)),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: GridView.count(
              primary: false,
              crossAxisCount: 2,
              children: [
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
                                'https://i.pravatar.cc/200?img=2')),
                      )),
                      Container(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Tersisa 22 jam',
                                      softWrap: false,
                                      overflow: TextOverflow.fade,
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              fontSize: 8.0,
                                              color: AppColors.putih,
                                              fontWeight: FontWeight.normal)),
                                    ),
                                    Text(
                                      '4 km 21',
                                      softWrap: false,
                                      overflow: TextOverflow.fade,
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              fontSize: 13.0,
                                              color: AppColors.putih,
                                              fontWeight: FontWeight.normal)),
                                    ),
                                  ],
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(0),
                                  child: CircleAvatar(
                                    radius: 18,
                                    backgroundColor: AppColors.putih,
                                    child: Icon(
                                      Icons.star,
                                      size: 24,
                                      color: AppColors.pinkMerah,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ))
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
                                'https://i.pravatar.cc/200?img=1')),
                      )),
                      Container(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Tersisa 22 jam',
                                      softWrap: false,
                                      overflow: TextOverflow.fade,
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              fontSize: 8.0,
                                              color: AppColors.putih,
                                              fontWeight: FontWeight.normal)),
                                    ),
                                    Text(
                                      '4 km 21',
                                      softWrap: false,
                                      overflow: TextOverflow.fade,
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              fontSize: 13.0,
                                              color: AppColors.putih,
                                              fontWeight: FontWeight.normal)),
                                    ),
                                  ],
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(0),
                                  child: CircleAvatar(
                                    radius: 18,
                                    backgroundColor: AppColors.putih,
                                    child: Icon(
                                      Icons.star,
                                      size: 24,
                                      color: AppColors.pinkMerah,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ))
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
                                'https://i.pravatar.cc/200?img=10')),
                      )),
                      Container(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Tersisa 22 jam',
                                      softWrap: false,
                                      overflow: TextOverflow.fade,
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              fontSize: 8.0,
                                              color: AppColors.putih,
                                              fontWeight: FontWeight.normal)),
                                    ),
                                    Text(
                                      '4 km 21',
                                      softWrap: false,
                                      overflow: TextOverflow.fade,
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              fontSize: 13.0,
                                              color: AppColors.putih,
                                              fontWeight: FontWeight.normal)),
                                    ),
                                  ],
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(0),
                                  child: CircleAvatar(
                                    radius: 18,
                                    backgroundColor: AppColors.putih,
                                    child: Icon(
                                      Icons.star,
                                      size: 24,
                                      color: AppColors.pinkMerah,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ))
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
                                'https://i.pravatar.cc/200?img=19')),
                      )),
                      Container(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Tersisa 22 jam',
                                      softWrap: false,
                                      overflow: TextOverflow.fade,
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              fontSize: 8.0,
                                              color: AppColors.putih,
                                              fontWeight: FontWeight.normal)),
                                    ),
                                    Text(
                                      '4 km 21',
                                      softWrap: false,
                                      overflow: TextOverflow.fade,
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              fontSize: 13.0,
                                              color: AppColors.putih,
                                              fontWeight: FontWeight.normal)),
                                    ),
                                  ],
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(0),
                                  child: CircleAvatar(
                                    radius: 18,
                                    backgroundColor: AppColors.putih,
                                    child: Icon(
                                      Icons.star,
                                      size: 24,
                                      color: AppColors.pinkMerah,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}