import 'package:bento_app/design_system/core/extensions/screen_utils_extesion.dart';
import 'package:bento_app/design_system/core/features/atoms/tokens/gaps.dart';
import 'package:bento_app/design_system/core/features/molecules/label/label.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../design_system/core/features/atoms/tokens/app_colors.dart';
import '../../../../design_system/core/features/organisms/app_bar_widget/app_bar_widget.dart';
import '../home/home_screen.dart';
import 'controller/motion_tab_bar.dart';
import 'controller/tab_bar_controller.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> with TickerProviderStateMixin {
  // TabController _tabController;
  MotionTabBarController? _motionTabBarController;

  @override
  void initState() {
    super.initState();

    //// use "MotionTabBarController" to replace with "TabController", if you need to programmatically change the tab
    _motionTabBarController = MotionTabBarController(
      initialIndex: 1,
      length: 5,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();

    // _tabController.dispose();
    _motionTabBarController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        bottomNavigationBar: MotionTabBar(
          controller:
              _motionTabBarController, // ADD THIS if you need to change your tab programmatically
          initialSelectedTab: "Home",
          labels: const ["Home", "Delas", "Shop", "Cart", "Account"],
          icons: const [
            Icons.home,
            Icons.local_offer,
            Icons.store_rounded,
            Icons.local_mall_rounded,
            CupertinoIcons.person_fill,
          ],

          tabSize: 50,
          tabBarHeight: 65,

          textStyle: const TextStyle(
            fontSize: 12,
            color: AppColors.primaryColor,
            fontWeight: FontWeight.bold,
          ),
          tabIconColor: AppColors.bottomIcons,
          tabIconSize: 28.0,
          tabIconSelectedSize: 32.0,
          tabSelectedColor: AppColors.secondaryColor,
          tabIconSelectedColor: AppColors.primaryColor,
          tabBarColor: Colors.white,
          onTabItemSelected: (int value) {
            setState(() {
              // _tabController!.index = value;
              _motionTabBarController!.index = value;
            });
          },
        ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          flexibleSpace: const AppBarWidget(),
        ),
        body: TabBarView(
          physics:
              const NeverScrollableScrollPhysics(), // swipe navigation handling is not supported
          // controller: _tabController,
          controller: _motionTabBarController,
          children: <Widget>[
            Center(
                child: DSLabel.description(
              label: 'Home',
            )),
            Center(
              child: DSLabel.description(
                label: 'Delas',
              ),
            ),
            const HomeScreen(),
            Center(
                child: DSLabel.description(
              label: "Cart",
            )),
            Center(
                child: DSLabel.description(
              label: "Account",
            )),
          ],
        ),
      ),
    );
  }
}
