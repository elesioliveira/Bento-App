import 'package:bento_app/design_system/core/features/molecules/label/label.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../design_system/core/features/atoms/tokens/app_colors.dart';
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
          flexibleSpace: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DSLabel.subtitle1Bold(
                      label: 'Delivery',
                    ),
                    DSLabel.body1(
                      label: 'Bacangan, Sambit',
                      color: Colors.grey.shade400,
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 12, right: 15, bottom: 12),
                child: CircleAvatar(
                  backgroundColor: AppColors.primaryColor,
                  child: Icon(Icons.person),
                ),
              )
            ],
          ),
        ),
        body: TabBarView(
          physics:
              const NeverScrollableScrollPhysics(), // swipe navigation handling is not supported
          // controller: _tabController,
          controller: _motionTabBarController,
          children: const <Widget>[
            Center(
              child: Text("HOME"),
            ),
            Center(
              child: Text("Delas"),
            ),
            HomeScreen(),
            Center(
              child: Text("Cart"),
            ),
            Center(
              child: Text("Account"),
            ),
          ],
        ),
      ),
    );
  }
}
