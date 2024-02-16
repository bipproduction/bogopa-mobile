import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constants/colors.dart';

class JumlahPenonton extends StatefulWidget {
  const JumlahPenonton({super.key});

  @override
  State<JumlahPenonton> createState() => _JumlahPenontonState();
}

class _JumlahPenontonState extends State<JumlahPenonton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    const CircleAvatar(
                      radius: 25,
                      backgroundColor: AppColors.pink,
                      child: CircleAvatar(
                        radius: 23,
                        backgroundImage:
                            NetworkImage('https://i.pravatar.cc/100?img=1'),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Sarah',
                              softWrap: false,
                              overflow: TextOverflow.fade,
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 18.0,
                                      color: AppColors.coklat,
                                      fontWeight: FontWeight.bold)),
                            ),
                            const SizedBox(width: 5),
                            const Icon(
                              Icons.verified,
                              size: 20,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: AppColors.pinkMerah),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5, right: 5),
                            child: Text(
                              '21',
                              softWrap: false,
                              overflow: TextOverflow.fade,
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 10.0,
                                      color: AppColors.putih,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            )
          ],
        ),
        Text(
          '9Km',
          softWrap: false,
          overflow: TextOverflow.fade,
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                  fontSize: 15.0,
                  color: AppColors.coklat,
                  fontWeight: FontWeight.normal)),
        ),
      ],
    );
  }
}
