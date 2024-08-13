import 'package:bento_app/design_system/core/extensions/screen_utils_extesion.dart';
import 'package:bento_app/design_system/core/features/atoms/tokens/gaps.dart';
import 'package:bento_app/design_system/core/features/molecules/label/label.dart';
import 'package:bento_app/design_system/core/features/organisms/item_tile/item_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../design_system/core/features/molecules/banner_slides/slide_banners.dart';
import '../../../../design_system/core/features/organisms/categorires/categories_component.dart';
import '../../../../design_system/core/features/organisms/description_card_organims/description_card_component.dart';
import '../../../../design_system/core/features/organisms/description_mode/description_mode_component.dart';
import '../../../../providers/providers.dart';
import 'controller/home_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late HomeController controller;
  @override
  void initState() {
    controller = getIt<HomeController>();
    controller.getAllCategories();
    controller.getProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          physics: const NeverScrollableScrollPhysics(),
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const DescriptionCardComponent(),
                  DSGaps.v16,
                  const SlideBanners(),
                  Container(
                    width: ScreenUtilsHelpers.screenWidth,
                    padding: EdgeInsets.only(left: 10.w),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: DSLabel.subtitle1Bold(label: 'Shop by category'),
                    ),
                  ),
                  const CategoriesComponent(),
                  DSGaps.v12,
                  const DescriptionModeComponent(),
                  AnimatedBuilder(
                      animation: controller,
                      builder: (context, child) {
                        if (controller.loading) {
                          return const Center(
                            child: CupertinoActivityIndicator(),
                          );
                        }
                        if (controller.products.isNotEmpty) {
                          return SizedBox(
                            width: ScreenUtilsHelpers.screenWidth,
                            height: ScreenUtilsHelpers.screenHeigth / 4,
                            child: GridView.builder(
                                physics: const ScrollPhysics(),
                                scrollDirection: Axis.vertical,
                                shrinkWrap: true,
                                padding: EdgeInsets.only(
                                    left: 10.w, right: 10.w, bottom: 10.h),
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 12,
                                  crossAxisSpacing: 12,
                                  childAspectRatio: 9.8 / 11.5,
                                ),
                                itemCount: controller.products.length,
                                itemBuilder: (context, index) {
                                  return ItemTile(
                                      isFavorited: false,
                                      item: controller.products[index]);
                                }),
                          );
                        } else {
                          return Center(
                            child: DSLabel.subtitle2Regular(
                              label: 'Nenhum produto encontrado',
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                            ),
                          );
                        }
                      })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
