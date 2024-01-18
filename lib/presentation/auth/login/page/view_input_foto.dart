import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/assets/assets.gen.dart';
import '../../../../core/constants/colors.dart';

class ViewInputFoto extends StatelessWidget {
  const ViewInputFoto({super.key, required this.data});

  final String? data;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: AppColors.putih,
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return TextButton(
                onPressed: () {
                  Get.back();
                },
                child: Assets.icons.back.svg(height: 38, width: 38),
              );
            },
          ),
        ),
        body: const SingleChildScrollView(
          child: DataInputFoto(),
        ),
      ),
    );
  }
}

class DataInputFoto extends StatefulWidget {
  const DataInputFoto({super.key});

  @override
  State<DataInputFoto> createState() => _DataInputFotoState();
}

class _DataInputFotoState extends State<DataInputFoto> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}