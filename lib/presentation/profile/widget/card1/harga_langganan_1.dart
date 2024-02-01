import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HargaLangganan1 extends StatefulWidget {
  const HargaLangganan1({super.key});

  @override
  State<HargaLangganan1> createState() => _HargaLangganan1State();
}

class _HargaLangganan1State extends State<HargaLangganan1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFFD1B378)),
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '12',
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 40.0,
                            color: Color(0xFFD1B378),
                            fontWeight: FontWeight.bold)),
                  ),
                  Text(
                    'bulan',
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 10.0,
                            color: Color(0xFFD1B378),
                            fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'Rp 15.782/bln',
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 11.0,
                            color: Color(0xFFD1B378),
                            fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Rp 139.782',
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 11.0,
                            color: Color(0xFFD1B378),
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFF906F2E), width: 6),
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '3',
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 40.0,
                            color: Color(0xFF906F2E),
                            fontWeight: FontWeight.bold)),
                  ),
                  Text(
                    'bulan',
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 10.0,
                            color: Color(0xFF906F2E),
                            fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'Rp 20.782/bln',
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 11.0,
                            color: Color(0xFF906F2E),
                            fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Rp 59.000',
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 15.0,
                            color: Color(0xFF906F2E),
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFFD1B378)),
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '1',
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 40.0,
                            color: Color(0xFFD1B378),
                            fontWeight: FontWeight.bold)),
                  ),
                  Text(
                    'bulan',
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 10.0,
                            color: Color(0xFFD1B378),
                            fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'Rp 30.782/bln',
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 11.0,
                            color: Color(0xFFD1B378),
                            fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Rp 30.782',
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 11.0,
                            color: Color(0xFFD1B378),
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
