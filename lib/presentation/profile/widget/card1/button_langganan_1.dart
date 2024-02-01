import 'package:bogopa_mobile/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonLangganan1 extends StatefulWidget {
  const ButtonLangganan1({super.key});

  @override
  State<ButtonLangganan1> createState() => _ButtonLangganan1State();
}

class _ButtonLangganan1State extends State<ButtonLangganan1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xFFD1B378),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Rp 59.000 Keanggotaan VIP',
                  softWrap: false,
                  overflow: TextOverflow.fade,
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 18.0,
                          color: AppColors.putih,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
