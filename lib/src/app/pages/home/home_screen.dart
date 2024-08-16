import 'package:bento_app/design_system/core/extensions/screen_utils_extesion.dart';
import 'package:bento_app/design_system/core/features/atoms/tokens/app_colors.dart';
import 'package:bento_app/design_system/core/features/atoms/tokens/gaps.dart';
import 'package:bento_app/design_system/core/features/molecules/custom_shimmer/custom_shimmer.dart';
import 'package:bento_app/design_system/core/features/molecules/label/label.dart';
import 'package:bento_app/design_system/core/features/organisms/item_tile/item_tile.dart';
import 'package:flutter/material.dart';
import '../../../../design_system/core/features/molecules/banner_slides/slide_widgets.dart';
import '../../../../design_system/core/features/molecules/classification/classification_widget.dart';
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
                  DSGaps.v16,
                  const DescriptionCardComponent(),
                  DSGaps.v8,
                  const SlideWidets(
                    tagHero: SizedBox(),
                    imgSvg: [
                      'lib/design_system/assets/banners/avocado.svg',
                      'lib/design_system/assets/banners/avocado.svg',
                      'lib/design_system/assets/banners/avocado.svg',
                    ],
                  ),

                  const ClassificationWidget(
                      titleDescription: 'Shop by category'),

                  const CategoriesComponent(),
                  DSGaps.v12,

                  const TodaySpecialWidget(),
                  //List products
                  AnimatedBuilder(
                      animation: controller,
                      builder: (context, child) {
                        if (controller.loading) {
                          //animation with shimmer simulation loading
                          return SizedBox(
                            width: ScreenUtilsHelpers.screenWidth,
                            height: ScreenUtilsHelpers.screenHeigth / 4,
                            child: GridView.count(
                              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                              physics: const BouncingScrollPhysics(),
                              crossAxisCount: 2,
                              mainAxisSpacing: 12,
                              crossAxisSpacing: 12,
                              childAspectRatio: 9.8 / 11.5,
                              children: List.generate(
                                3,
                                (index) => CustomShimmer(
                                  height: double.infinity,
                                  width: double.infinity,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          );
                        }
                        if (controller.products.isNotEmpty) {
                          //if list of products is not empty
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
                                  final product = controller.products[index];
                                  Color backgroundColor;
                                  if (product.name.contains('Orange')) {
                                    backgroundColor = AppColors.colorOrange;
                                  } else if (product.name.contains('Cabbage')) {
                                    backgroundColor = AppColors.colorCabbage;
                                  } else {
                                    backgroundColor =
                                        AppColors.colorCabbage; // Color default
                                  }
                                  return ItemTile(
                                      isFavorited: false,
                                      backgroundColorCard: backgroundColor,
                                      item: controller.products[index]);
                                }),
                          );
                        } else {
                          return Center(
                            child: DSLabel.description(
                              label: 'Nenhum produto encontrado',
                              overflow: TextOverflow.ellipsis,
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
