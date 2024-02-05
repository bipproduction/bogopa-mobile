import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/constants/colors.dart';

enum SingingCharacter { bca, bri, mandiri, gopay, dana }

class ViewPembayaran extends StatefulWidget {
  const ViewPembayaran({super.key});

  @override
  State<ViewPembayaran> createState() => _ViewPembayaranState();
}

class _ViewPembayaranState extends State<ViewPembayaran> {
  SingingCharacter? _character = SingingCharacter.bca;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: [
                      Assets.images.bca.image(
                        width: 60,
                        height: 50,
                        fit: BoxFit.scaleDown,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'BCA Virtual Account',
                        softWrap: false,
                        overflow: TextOverflow.fade,
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 15.0,
                                color: AppColors.coklat,
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                  Radio<SingingCharacter>(
                      value: SingingCharacter.bca,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      })
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: [
                      Assets.images.bri.image(
                        width: 60,
                        height: 50,
                        fit: BoxFit.scaleDown,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'BRI Virtual Account',
                        softWrap: false,
                        overflow: TextOverflow.fade,
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 15.0,
                                color: AppColors.coklat,
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                  Radio<SingingCharacter>(
                      value: SingingCharacter.bri,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      })
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: [
                      Assets.images.mandiri.image(
                        width: 60,
                        height: 50,
                        fit: BoxFit.scaleDown,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Mandiri Virtual Account',
                        softWrap: false,
                        overflow: TextOverflow.fade,
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 15.0,
                                color: AppColors.coklat,
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                  Radio<SingingCharacter>(
                      value: SingingCharacter.mandiri,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      })
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Assets.images.dana.image(
                    width: 60,
                    height: 50,
                    fit: BoxFit.scaleDown,
                  ),
                  Radio<SingingCharacter>(
                      value: SingingCharacter.dana,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      })
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
