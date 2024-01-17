import 'package:bogopa_mobile/core/assets/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormPhone extends StatefulWidget {
  const FormPhone({super.key, required this.data});

  final String? data;
  @override
  State<FormPhone> createState() => _FormPhoneState();
}

class _FormPhoneState extends State<FormPhone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
