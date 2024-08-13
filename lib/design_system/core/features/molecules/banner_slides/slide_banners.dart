import 'package:flutter/material.dart';
import '../../../extensions/screen_utils_extesion.dart';
import '../../atoms/tokens/app_colors.dart';
import '../../atoms/tokens/gaps.dart';

class SlideBanners extends StatefulWidget {
  const SlideBanners({super.key});

  @override
  State<SlideBanners> createState() => _SlideBannersState();
}

class _SlideBannersState extends State<SlideBanners> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: _currentPage,
    );
  }

  void _nextPage(int value) {
    // Supondo que você tenha 3 páginas
    setState(() {
      _currentPage = value;
    });
    _pageController.animateToPage(
      _currentPage,
      duration: const Duration(milliseconds: 800),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtilsHelpers.screenWidth,
      padding: EdgeInsets.only(left: 5.w, right: 5.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            width: ScreenUtilsHelpers.screenWidth,
            height: 180.h,
            child: PageView(
              clipBehavior: Clip.hardEdge,
              controller: _pageController,
              padEnds: true,
              pageSnapping: true,
              onPageChanged: (value) {
                setState(() {
                  _currentPage = value;
                });
              },
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: ClipRRect(
                    clipBehavior: Clip.antiAlias,
                    child: Image.asset(
                      'lib/design_system/assets/images/avocado.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: ClipRRect(
                    clipBehavior: Clip.antiAlias,
                    child: Image.asset(
                      'lib/design_system/assets/images/avocado.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: ClipRRect(
                    clipBehavior: Clip.antiAlias,
                    child: Image.asset(
                      'lib/design_system/assets/images/avocado.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              GestureDetector(
                onTap: () {
                  _nextPage(0);
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                  width: _currentPage == 0 ? 25 : 10,
                  height: 10,
                  child: Container(
                    decoration: BoxDecoration(
                        color: _currentPage == 0
                            ? AppColors.primaryColor
                            : Colors.grey.shade400,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              DSGaps.h6,
              GestureDetector(
                onTap: () {
                  _nextPage(1);
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                  width: _currentPage == 1 ? 25 : 10,
                  child: Container(
                    height: 10,
                    decoration: BoxDecoration(
                        color: _currentPage == 1
                            ? AppColors.primaryColor
                            : Colors.grey.shade400,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              DSGaps.h6,
              GestureDetector(
                onTap: () {
                  _nextPage(2);
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                  width: _currentPage == 2 ? 25 : 10,
                  child: Container(
                    height: 10,
                    decoration: BoxDecoration(
                        color: _currentPage == 2
                            ? AppColors.primaryColor
                            : Colors.grey.shade400,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
