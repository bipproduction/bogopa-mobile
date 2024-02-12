

import 'package:bogopa_mobile/core/constants/colors.dart';
import 'package:flutter/material.dart';

class ReMessageInputWidget extends StatelessWidget {
  const ReMessageInputWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5.0),
      height: 50,
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  width: 1.0,
                  color: const Color(0xFFC4C4C4),
                ),
                borderRadius: BorderRadius.circular(35.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      icon: const Icon(
                        Icons.emoji_emotions,
                        color: Color(0xFF231F20),
                      ),
                      onPressed: () {}),
                  const Expanded(
                    child: TextField(
                      maxLines: 6,
                      decoration: InputDecoration(
                          hintText: "Type message ....",
                          hintStyle: TextStyle(color: Color(0xFF231F20)),
                          border: InputBorder.none),
                    ),
                  ),
                  IconButton(
                    icon:
                        const Icon(Icons.attach_file, color: Color(0xFF231F20)),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.photo_camera,
                        color: Color(0xFF231F20)),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 5),
          Container(
            padding: const EdgeInsets.all(10.0),
            decoration: const BoxDecoration(
                color: AppColors.pinkMerah, shape: BoxShape.circle),
            child: InkWell(
              onTap: () {
              },
              child: const Icon(
                Icons.send,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
