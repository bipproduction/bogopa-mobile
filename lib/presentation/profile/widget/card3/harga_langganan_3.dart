import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HargaLangganan3 extends StatefulWidget {
  const HargaLangganan3({super.key});

  @override
  State<HargaLangganan3> createState() => _HargaLangganan3State();
}

class _HargaLangganan3State extends State<HargaLangganan3> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFFA7A7A7)),
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
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
                            color: Color(0xFFA7A7A7),
                            fontWeight: FontWeight.bold)),
                  ),
                  Text(
                    'bulan',
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 10.0,
                            color: Color(0xFFA7A7A7),
                            fontWeight: FontWeight.normal)),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'Rp 100.000/bln',
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 11.0,
                            color: Color(0xFFA7A7A7),
                            fontWeight: FontWeight.normal)),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Rp 1.300.000',
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 11.0,
                            color: Color(0xFFA7A7A7),
                            fontWeight: FontWeight.normal)),
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
              padding: const EdgeInsets.all(12.0),
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
                            color: Color(0xFF959494),
                            fontWeight: FontWeight.bold)),
                  ),
                  Text(
                    'bulan',
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 10.0,
                            color: Color(0xFF959494),
                            fontWeight: FontWeight.normal)),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'Rp 134.000/bln',
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 11.0,
                            color: Color(0xFF959494),
                            fontWeight: FontWeight.normal)),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Rp 459.000',
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 15.0,
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
              padding: const EdgeInsets.all(12.0),
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
                            color: Color(0xFFA7A7A7),
                            fontWeight: FontWeight.bold)),
                  ),
                  Text(
                    'bulan',
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 10.0,
                            color: Color(0xFFA7A7A7),
                            fontWeight: FontWeight.normal)),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'Rp 199.000/bln',
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 11.0,
                            color: Color(0xFFA7A7A7),
                            fontWeight: FontWeight.normal)),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Rp 199.000',
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 11.0,
                            color: Color(0xFFA7A7A7),
                            fontWeight: FontWeight.normal)),
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
