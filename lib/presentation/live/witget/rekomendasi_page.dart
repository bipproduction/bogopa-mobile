import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constants/colors.dart';

class RekomendasiPage extends StatefulWidget {
  const RekomendasiPage({super.key});

  @override
  State<RekomendasiPage> createState() => _RekomendasiPageState();
}

class _RekomendasiPageState extends State<RekomendasiPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
      child: GridView.count(
        primary: false,
        crossAxisCount: 2,
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              decoration: BoxDecoration(
                  color: AppColors.pink,
                  borderRadius: BorderRadius.circular(15)),
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child:
                            Image.network('https://i.pravatar.cc/200?img=20')),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                        padding: const EdgeInsets.all(5.0),
                        alignment: Alignment.bottomRight,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: <Color>[
                              Colors.black.withAlpha(0),
                              Colors.black.withAlpha(0),
                              Colors.black.withAlpha(0),
                              Colors.black
                            ],
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Merapat yukkkk',
                                      softWrap: false,
                                      overflow: TextOverflow.fade,
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              fontSize: 11.0,
                                              color: AppColors.putih,
                                              fontWeight: FontWeight.normal)),
                                    ),
                                    Text(
                                      'Jakarta Timur',
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
                                Padding(
                                  padding: const EdgeInsets.all(0),
                                  child: Text(
                                    '21',
                                    softWrap: false,
                                    overflow: TextOverflow.fade,
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            fontSize: 13.0,
                                            color: AppColors.putih,
                                            fontWeight: FontWeight.normal)),
                                  ),
                                )
                              ]),
                        )),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              decoration: BoxDecoration(
                  color: AppColors.pink,
                  borderRadius: BorderRadius.circular(15)),
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child:
                            Image.network('https://i.pravatar.cc/200?img=35')),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                        padding: const EdgeInsets.all(5.0),
                        alignment: Alignment.bottomRight,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: <Color>[
                              Colors.black.withAlpha(0),
                              Colors.black.withAlpha(0),
                              Colors.black.withAlpha(0),
                              Colors.black
                            ],
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Malam Semuanya',
                                      softWrap: false,
                                      overflow: TextOverflow.fade,
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              fontSize: 11.0,
                                              color: AppColors.putih,
                                              fontWeight: FontWeight.normal)),
                                    ),
                                    Text(
                                      'Jakarta Barat',
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
                                Padding(
                                  padding: const EdgeInsets.all(0),
                                  child: Text(
                                    '21',
                                    softWrap: false,
                                    overflow: TextOverflow.fade,
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            fontSize: 13.0,
                                            color: AppColors.putih,
                                            fontWeight: FontWeight.normal)),
                                  ),
                                )
                              ]),
                        )),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
