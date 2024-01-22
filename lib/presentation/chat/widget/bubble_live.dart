import 'package:bogopa_mobile/core/constants/colors.dart';
import 'package:flutter/material.dart';

class BubbleLive extends StatelessWidget {
  const BubbleLive({
    Key? key,
    required this.name,
    required this.isMe,
  }) : super(key: key);

  final String name;
  final bool isMe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
                radius: 41,
                backgroundColor: AppColors.pink,
                child: CircleAvatar(
                  radius: 36,
                  backgroundImage:
                      NetworkImage('https://i.pravatar.cc/100?img=$name'),
                ),
              ),
              const CircleAvatar(
                radius: 12,
                backgroundColor: AppColors.putih,
                child: CircleAvatar(
                  radius: 11,
                  backgroundColor: AppColors.pinkMerah,
                  child: Icon(
                    Icons.live_tv,
                    size: 15,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(name),
          )
        ],
      ),
    );
  }
}
