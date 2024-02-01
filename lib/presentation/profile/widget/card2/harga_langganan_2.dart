import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HargaLangganan2 extends StatefulWidget {
  const HargaLangganan2({super.key});

  @override
  State<HargaLangganan2> createState() => _HargaLangganan2State();
}

class _HargaLangganan2State extends State<HargaLangganan2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFF825B0D)),
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
                            color: Color(0xFF825B0D),
                            fontWeight: FontWeight.bold)),
                  ),
                  Text(
                    'bulan',
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 10.0,
                            color: Color(0xFF825B0D),
                            fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'Rp 35.782/bln',
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 11.0,
                            color: Color(0xFF825B0D),
                            fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Rp 439.782',
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 11.0,
                            color: Color(0xFF825B0D),
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFF684105), width: 6),
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
                            color: Color(0xFF684105),
                            fontWeight: FontWeight.bold)),
                  ),
                  Text(
                    'bulan',
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 10.0,
                            color: Color(0xFF684105),
                            fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'Rp 46.782/bln',
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 11.0,
                            color: Color(0xFF684105),
                            fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Rp 159.000',
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 15.0,
                            color: Color(0xFF684105),
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFF825B0D)),
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
                            color: Color(0xFF825B0D),
                            fontWeight: FontWeight.bold)),
                  ),
                  Text(
                    'bulan',
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 10.0,
                            color: Color(0xFF825B0D),
                            fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'Rp 80.782/bln',
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 11.0,
                            color: Color(0xFF825B0D),
                            fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Rp 80.782',
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 11.0,
                            color: Color(0xFF825B0D),
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
