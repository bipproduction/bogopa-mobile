import 'package:bogopa_mobile/core/assets/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constants/colors.dart';

class ViewVS extends StatefulWidget {
  const ViewVS({super.key});

  @override
  State<ViewVS> createState() => _ViewVSState();
}

class _ViewVSState extends State<ViewVS> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Text(
          'VS',
          softWrap: false,
          overflow: TextOverflow.fade,
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                  fontSize: 48.0,
                  color: AppColors.pinkMerah,
                  fontWeight: FontWeight.bold)),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: AppColors.pinkMerah),
                    // ignore: deprecated_member_use_from_same_package
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Assets.icons.acakBattle
                          // ignore: deprecated_member_use_from_same_package
                          .svg(color: AppColors.putih, height: 50),
                    )),
                const SizedBox(height: 10),
                Text(
                  'Battle Acak',
                  softWrap: false,
                  overflow: TextOverflow.fade,
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 16.0,
                          color: AppColors.pinkMerah,
                          fontWeight: FontWeight.normal)),
                ),
                Text(
                  'Rekor 0 menang',
                  softWrap: false,
                  overflow: TextOverflow.fade,
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 12.0,
                          color: AppColors.coklat,
                          fontWeight: FontWeight.normal)),
                ),
              ],
            ),
            Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: AppColors.pinkMerah),
                    // ignore: deprecated_member_use_from_same_package
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Assets.icons.battle
                          // ignore: deprecated_member_use_from_same_package
                          .svg(color: AppColors.putih, height: 50),
                    )),
                const SizedBox(height: 10),
                Text(
                  'Teman Battle',
                  softWrap: false,
                  overflow: TextOverflow.fade,
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 16.0,
                          color: AppColors.pinkMerah,
                          fontWeight: FontWeight.normal)),
                ),
                Text(
                  '0',
                  softWrap: false,
                  overflow: TextOverflow.fade,
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 12.0,
                          color: AppColors.putih,
                          fontWeight: FontWeight.normal)),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
