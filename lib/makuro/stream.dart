import 'package:bogopa_mobile/makuro/camera.dart';
import 'package:bogopa_mobile/makuro/my_player.dart';
import 'package:bogopa_mobile/makuro/my_qplayer.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class MyStream extends StatelessWidget {
  const MyStream({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            TextButton(
                onPressed: () {
                  Get.to(MyCamera());
                },
                child: Text("ke camera live")),
            TextButton(
                onPressed: () {
                  Get.to(MyPlayer());
                },
                child: Text("ke Player")
                ),
                TextButton(onPressed: () => Get.to(MyQPlayer()), child: Text("ke q player"))
          ],
        ),
      )),
    );
  }
}
