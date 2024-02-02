import 'package:bogopa_mobile/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonDialogPutarBalik extends StatefulWidget {
  const ButtonDialogPutarBalik({super.key});

  @override
  State<ButtonDialogPutarBalik> createState() => _ButtonDialogPutarBalikState();
}

class _ButtonDialogPutarBalikState extends State<ButtonDialogPutarBalik> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
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
                          fontSize: 15.0,
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
