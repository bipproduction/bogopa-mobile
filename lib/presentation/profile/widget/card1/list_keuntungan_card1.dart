import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants/colors.dart';

class ListKeuntunganLangganan1 extends StatefulWidget {
  const ListKeuntunganLangganan1({super.key});

  @override
  State<ListKeuntunganLangganan1> createState() =>
      _ListKeuntunganLangganan1State();
}

class _ListKeuntunganLangganan1State extends State<ListKeuntunganLangganan1> {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 10.0),
          Column(
              children: [
                // ignore: avoid_unnecessary_containers
                Container(
                  child: TextButton(
                    style: const ButtonStyle(
                        padding: MaterialStatePropertyAll(EdgeInsets.all(0))),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: const Color(0xFFD1B378),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Icon(
                              Icons.mood,
                              size: 38,
                              color: AppColors.putih,
                            )),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Suka Tak Terbatas',
                                softWrap: false,
                                overflow: TextOverflow.fade,
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontSize: 14.0,
                                        color: AppColors.coklat,
                                        fontWeight: FontWeight.bold)),
                              ),
                              const SizedBox(height: 5),
                              Row(
                                children: [
                                  Text(
                                    'Suka sebanyak yang kamu mau',
                                    softWrap: false,
                                    overflow: TextOverflow.fade,
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            fontSize: 10.0,
                                            color: AppColors.coklat,
                                            fontWeight: FontWeight.normal)),
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
                        padding: MaterialStatePropertyAll(EdgeInsets.all(0))),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: const Color(0xFFD1B378),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Icon(
                              Icons.saved_search,
                              size: 38,
                              color: AppColors.putih,
                            )),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Gratis 5 Super Per hari',
                                softWrap: false,
                                overflow: TextOverflow.fade,
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontSize: 14.0,
                                        color: AppColors.coklat,
                                        fontWeight: FontWeight.bold)),
                              ),
                              const SizedBox(height: 5),
                              Row(
                                children: [
                                  Text(
                                    'Percocokan melonjak 5 kali!',
                                    softWrap: false,
                                    overflow: TextOverflow.fade,
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            fontSize: 10.0,
                                            color: AppColors.coklat,
                                            fontWeight: FontWeight.normal)),
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
                        padding: MaterialStatePropertyAll(EdgeInsets.all(0))),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: const Color(0xFFD1B378),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Icon(
                              Icons.settings_backup_restore,
                              size: 38,
                              color: AppColors.putih,
                            )),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Berbalik Tak Terbatas',
                                softWrap: false,
                                overflow: TextOverflow.fade,
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontSize: 14.0,
                                        color: AppColors.coklat,
                                        fontWeight: FontWeight.bold)),
                              ),
                              const SizedBox(height: 5),
                              Row(
                                children: [
                                  Text(
                                    'Kembali dan geser lagi!',
                                    softWrap: false,
                                    overflow: TextOverflow.fade,
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            fontSize: 10.0,
                                            color: AppColors.coklat,
                                            fontWeight: FontWeight.normal)),
                                  ),
                                ],
                              ),
                            ]),
                      ],
                    ),
                  ),
                ),
              ],
            ),
        ]);
  }
}
