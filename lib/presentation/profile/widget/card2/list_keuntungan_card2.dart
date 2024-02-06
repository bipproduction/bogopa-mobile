import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/assets/assets.gen.dart';
import '../../../../core/constants/colors.dart';

class ListKeuntunganLangganan2 extends StatefulWidget {
  const ListKeuntunganLangganan2({super.key});

  @override
  State<ListKeuntunganLangganan2> createState() =>
      _ListKeuntunganLangganan2State();
}

class _ListKeuntunganLangganan2State extends State<ListKeuntunganLangganan2> {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            children: [
              const SizedBox(height: 10.0),
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
                              color: const Color(0xFF684105),
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
              const SizedBox(
                height: 15,
              ),
              Assets.images.gold.image(
                width: 280,
                height: 170,
                fit: BoxFit.scaleDown,
              ),
            ],
          ),
        ]);
  }
}
