import 'package:bogopa_mobile/core/constants/colors.dart';
import 'package:bogopa_mobile/presentation/dating/page/dating_page.dart';
import 'package:flutter/material.dart';

import '../../core/assets/assets.gen.dart';
import '../chat/page/view_chat_page.dart';
import '../live/page/view_live_page.dart';
import '../profile/page/view_profile_page.dart';

class DashboardPage extends StatefulWidget {
  final int currentTab;
  const DashboardPage({
    super.key,
    required this.currentTab,
  });

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  late int _selectedIndex;
  final List<Widget> _pages = [
    const DatingPage(),
    const ViewLivePage(),
    const ViewChatPage(),
    const ViewProfilePage(),
  ];

  void _onItemTapped(int index) {
    _selectedIndex = index;
    setState(() {});
  }

  @override
  void initState() {
    _selectedIndex = widget.currentTab;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.putih,
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.putih,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.pinkMerah,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Assets.icons.love.svg(
              colorFilter: const ColorFilter.mode(
                AppColors.coklat,
                BlendMode.srcIn,
              ),
            ),
            activeIcon: Assets.icons.love.svg(),
            label: 'DATING',
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.live.svg(
              colorFilter: const ColorFilter.mode(
                AppColors.coklat,
                BlendMode.srcIn,
              ),
            ),
            activeIcon: Assets.icons.live.svg(),
            label: 'LIVE',
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.chat.svg(
              colorFilter: const ColorFilter.mode(
                AppColors.coklat,
                BlendMode.srcIn,
              ),
            ),
            activeIcon: Assets.icons.chat.svg(),
            label: 'CHAT',
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.profile.svg(
              colorFilter: const ColorFilter.mode(
                AppColors.coklat,
                BlendMode.srcIn,
              ),
            ),
            activeIcon: Assets.icons.profile.svg(),
            label: 'PROFILE',
          ),
        ],
      ),
    );
  }
}
