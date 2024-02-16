
// import 'package:bogopa_mobile/makuro/my_player.dart';
// import 'package:bogopa_mobile/makuro/my_qplayer.dart';
import 'package:bogopa_mobile/presentation/live/witget/camera.dart';
import 'package:bogopa_mobile/presentation/live/witget/my_player.dart';
import 'package:bogopa_mobile/presentation/live/witget/my_qplayer.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class MyStream extends StatelessWidget {
  const MyStream({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            TextButton(
                onPressed: () {
                  Get.to(const MyCamera());
                },
                child: const Text("ke camera live")),
            TextButton(
                onPressed: () {
                  Get.to(const MyPlayer());
                },
                child: const Text("ke Player")
                ),
                TextButton(onPressed: () => Get.to(const MyQPlayer()), child: const Text("ke q player"))
          ],
        ),
      )),
    );
  }
}