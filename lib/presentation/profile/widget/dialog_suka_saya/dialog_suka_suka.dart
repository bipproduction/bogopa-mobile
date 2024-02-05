import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/constants/colors.dart';
import 'button_dialog_suka_saya.dart';
import 'harga_dialog_suka_saya.dart';

class CustomDialogSukaSaya extends StatelessWidget {
  const CustomDialogSukaSaya({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Stack(
        children: [
          const CardDialogSukaSaya(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Positioned(
                  child: (InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.close),
                ),
              )))
            ],
          )
        ],
      ),
    );
  }
}

class CardDialogSukaSaya extends StatelessWidget {
  const CardDialogSukaSaya({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 436,
      decoration: BoxDecoration(
          color: AppColors.putih, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            'LIHAT SIAPA SUKA SAYA',
            softWrap: false,
            overflow: TextOverflow.fade,
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    fontSize: 20.0,
                    color: AppColors.pinkMerah,
                    fontWeight: FontWeight.bold)),
          ),
          const SizedBox(
            height: 20,
          ),
          const CircleAvatar(
            radius: 44,
            backgroundColor: AppColors.pink,
            child: CircleAvatar(
                radius: 40,
                backgroundImage:
                    NetworkImage('https://i.pravatar.cc/200?img=4')),
          ),
          const SizedBox(
            height: 30,
          ),
          const HargaDialogSukaSaya(),
          const SizedBox(
            height: 20,
          ),
          const ButtonDialogSukaSaya()
        ],
      ),
    );
  }
}
