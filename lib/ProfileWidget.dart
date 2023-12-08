import 'package:flutter/material.dart';

import 'AppColors.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key, required this.name, required this.image});

  final String name;
  final AssetImage image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.backGroundPrimary,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 120, height: 120, child: Image(image: image))
            ],
          ),
          const SizedBox(height: 36),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                name,
                style: const TextStyle(
                    fontFamily: "SF Pro Display",
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                    fontSize: 24),
              )
            ],
          ),
          SizedBox(
            height: 14,
          ),
          const ProfileTabBar()
        ],
      ),
    );
  }
}

class ProfileTabBar extends StatefulWidget {
  const ProfileTabBar({super.key});

  @override
  State<ProfileTabBar> createState() => _ProfileTabBarState();
}

class _ProfileTabBarState extends State<ProfileTabBar>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: _tabController,
      labelColor: AppColors.textPrimary,
      indicator: const UnderlineTabIndicator(
          borderSide: BorderSide(color: AppColors.tabsPrimary, width: 4)),
      tabs: const <Widget>[
        Tab(
          text: "Профиль",
        ),
        Tab(
          text: "Настройки",
        )
      ],
    );
  }
}
