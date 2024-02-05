import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HargaDialogSayaSuka extends StatefulWidget {
  const HargaDialogSayaSuka({super.key});

  @override
  State<HargaDialogSayaSuka> createState() => _HargaDialogSayaSukaState();
}

class _HargaDialogSayaSukaState extends State<HargaDialogSayaSuka> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFFA7A7A7)),
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '12',
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 38.0,
                            color: Color(0xFFA7A7A7),
                            fontWeight: FontWeight.bold)),
                  ),
                  Text(
                    'bulan',
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 8.0,
                            color: Color(0xFFA7A7A7),
                            fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'Rp 15.782/bln',
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 9.0,
                            color: Color(0xFFA7A7A7),
                            fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Rp 139.782',
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 9.0,
                            color: Color(0xFFA7A7A7),
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFF959494), width: 6),
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '3',
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 38.0,
                            color: Color(0xFF959494),
                            fontWeight: FontWeight.bold)),
                  ),
                  Text(
                    'bulan',
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 8.0,
                            color: Color(0xFF959494),
                            fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'Rp 20.782/bln',
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 9.0,
                            color: Color(0xFF959494),
                            fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Rp 59.000',
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 9.0,
                            color: Color(0xFF959494),
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFFA7A7A7)),
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '1',
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 38.0,
                            color: Color(0xFFA7A7A7),
                            fontWeight: FontWeight.bold)),
                  ),
                  Text(
                    'bulan',
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 8.0,
                            color: Color(0xFFA7A7A7),
                            fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'Rp 30.782/bln',
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 9.0,
                            color: Color(0xFFA7A7A7),
                            fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Rp 30.782',
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 9.0,
                            color: Color(0xFFA7A7A7),
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
