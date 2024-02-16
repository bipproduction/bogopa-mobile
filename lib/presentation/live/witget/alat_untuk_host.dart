import 'package:bogopa_mobile/core/assets/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/constants/colors.dart';

class AlatUntukHost extends StatefulWidget {
  const AlatUntukHost({super.key});

  @override
  State<AlatUntukHost> createState() => _AlatUntukHostState();
}

class _AlatUntukHostState extends State<AlatUntukHost> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Assets.icons.brush.svg(height: 32),
            ),
            Text(
              'Percantik',
              softWrap: false,
              overflow: TextOverflow.fade,
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontSize: 11.0,
                      color: AppColors.coklat,
                      fontWeight: FontWeight.normal)),
            ),
          ],
        ),
        const SizedBox(
          width: 30,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.flip_camera_android,
                size: 32,
                color: AppColors.pinkMerah,
              ),
            ),
            Text(
              'Putar kamera',
              softWrap: false,
              overflow: TextOverflow.fade,
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontSize: 11.0,
                      color: AppColors.coklat,
                      fontWeight: FontWeight.normal)),
            ),
          ],
        )
      ],
    );
  }
}
