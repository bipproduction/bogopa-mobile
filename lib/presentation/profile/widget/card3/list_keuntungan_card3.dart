import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants/colors.dart';

class ListKeuntunganLangganan3 extends StatefulWidget {
  const ListKeuntunganLangganan3({super.key});

  @override
  State<ListKeuntunganLangganan3> createState() =>
      _ListKeuntunganLangganan3State();
}

class _ListKeuntunganLangganan3State extends State<ListKeuntunganLangganan3> {
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
                                color: const Color(0xFF959494),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Icon(
                              Icons.visibility,
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
                                'Siapa Mengunjungi Saya',
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
                                    'Lihat siapa yang mengunjungi profill',
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
                              const SizedBox(height: 2),
                              Row(
                                children: [
                                  Text(
                                    'Anda kapan aja',
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
                                color: const Color(0xFF959494),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Icon(
                              Icons.filter_alt,
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
                                'Saringan Lanjutkan',
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
                                    'Aktifkan untuk melihat hanya pengguna',
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
                              const SizedBox(height: 2),
                              Row(
                                children: [
                                  Text(
                                    'yang telah verifikasi',
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
