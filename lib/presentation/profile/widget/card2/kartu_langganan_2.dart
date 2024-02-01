import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants/colors.dart';

class KartuLangganan2 extends StatefulWidget {
  const KartuLangganan2({super.key});

  @override
  State<KartuLangganan2> createState() => _KartuLangganan2State();
}

class _KartuLangganan2State extends State<KartuLangganan2> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xFF684105)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListTile(
            title: Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 5),
              child: Text(
                'GOLD',
                softWrap: false,
                overflow: TextOverflow.fade,
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 20.0,
                        color: AppColors.putih,
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
                    'Hak istimewa tidak valid',
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
