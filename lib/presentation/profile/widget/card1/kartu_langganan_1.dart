import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants/colors.dart';

class KartuLangganan1 extends StatefulWidget {
  const KartuLangganan1({super.key});

  @override
  State<KartuLangganan1> createState() => _KartuLangganan1State();
}

class _KartuLangganan1State extends State<KartuLangganan1> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xFFD1B378)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListTile(
            title: Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 5),
              child: Text(
                'VIP',
                softWrap: false,
                overflow: TextOverflow.fade,
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 20.0,
                        color: Color(0xFF9F6D21),
                        fontWeight: FontWeight.bold)),
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 5),
              child: Row(
                children: <Widget>[
                  const CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 19,
                      backgroundImage:
                          NetworkImage('https://i.pravatar.cc/100?img=1'),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Text(
                    'VIP Bulan Terbatas',
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 11.0,
                            color: AppColors.putih,
                            fontWeight: FontWeight.normal)),
                  ),
                ],
              ),
            ),
            trailing: const Icon(
              Icons.star,
              color: AppColors.putih,
              size: 50,
            ),
          ),
        ));
  }
}
