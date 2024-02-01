import 'package:bogopa_mobile/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonLangganan3 extends StatefulWidget {
  const ButtonLangganan3({super.key});

  @override
  State<ButtonLangganan3> createState() => _ButtonLangganan3State();
}

class _ButtonLangganan3State extends State<ButtonLangganan3> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xFF959494),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Rp 459.000 Dapatkan Premium',
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
