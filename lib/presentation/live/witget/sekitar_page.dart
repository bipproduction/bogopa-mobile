import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constants/colors.dart';

class SekitarPage extends StatefulWidget {
  const SekitarPage({super.key});

  @override
  State<SekitarPage> createState() => _SekitarPageState();
}

class _SekitarPageState extends State<SekitarPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
      child: Expanded(
          child: Column(
        children: <Widget>[
          Expanded(
            child: GridView.count(
              primary: false,
              crossAxisCount: 2,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    fit: StackFit.passthrough,
                    children: <Widget>[
                      // ignore: avoid_unnecessary_containers
                      Container(
                          height: 400,
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: AppColors.pink,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: InkWell(
                            onTap: () {},
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                    'https://i.pravatar.cc/200?img=9')),
                          )),
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                              gradient: LinearGradient(
                                  begin: FractionalOffset.topCenter,
                                  end: FractionalOffset.bottomCenter,
                                  colors: [
                                    Colors.white.withOpacity(0.0),
                                    Colors.black,
                                  ],
                                  stops: const [
                                    0.0,
                                    1.0,
                                  ])),
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Selamat Datang',
                                      softWrap: false,
                                      overflow: TextOverflow.fade,
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              fontSize: 11.0,
                                              color: AppColors.putih,
                                              fontWeight: FontWeight.normal)),
                                    ),
                                    Text(
                                      'Denpasar Barat',
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
                              ],
                            ),
                          )),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    fit: StackFit.passthrough,
                    children: <Widget>[
                      // ignore: avoid_unnecessary_containers
                      Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: AppColors.pink,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: InkWell(
                            onTap: () {},
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                    'https://i.pravatar.cc/200?img=5')),
                          )),
                      Container(
                        decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                              gradient: LinearGradient(
                                  begin: FractionalOffset.topCenter,
                                  end: FractionalOffset.bottomCenter,
                                  colors: [
                                    Colors.white.withOpacity(0.0),
                                    Colors.black,
                                  ],
                                  stops: const [
                                    0.0,
                                    1.0,
                                  ])),
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Gass Polll',
                                      softWrap: false,
                                      overflow: TextOverflow.fade,
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              fontSize: 11.0,
                                              color: AppColors.putih,
                                              fontWeight: FontWeight.normal)),
                                    ),
                                    Text(
                                      'Denpasar Selatan',
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
                              ],
                            ),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
