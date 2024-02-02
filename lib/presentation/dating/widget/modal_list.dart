import 'package:bogopa_mobile/presentation/profile/widget/card1/harga_langganan_1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/constants/colors.dart';
import 'button_dialog_putar_bali.dart';
import 'dialog_putar_balik.dart';

class ModalList extends StatelessWidget {
  const ModalList({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ViewModalList(),
    );
  }
}

class ViewModalList extends StatelessWidget {
  const ViewModalList({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: const Badge(
            label: Text(
              'VIP',
              style: TextStyle(color: AppColors.coklat),
            ),
            backgroundColor: Colors.yellow,
            child: Icon(
              Icons.settings_backup_restore,
              color: AppColors.coklat,
            )),
        onPressed: () {
          showDialog(
              context: context, builder: (context) => const CustomDialogData());
        });
  }
}

class CustomDialogData extends StatelessWidget {
  const CustomDialogData({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Stack(
        children: [
          const CardDialog(),
          Positioned(
            height: 30,
            width: 30,
            child: OutlinedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Icon(Icons.cancel)
            ),
          )
        ],
      ),
    );
  }
}

class CardDialog extends StatelessWidget {
  const CardDialog({
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
            'PUTAR BALIK',
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
          const DialogPutarBalik(),
          const SizedBox(
            height: 20,
          ),
          ButtonDialogPutarBalik()
        ],
      ),
    );
  }
}
