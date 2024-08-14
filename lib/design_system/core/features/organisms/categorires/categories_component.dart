import 'package:bento_app/design_system/core/features/atoms/tokens/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../providers/providers.dart';
import '../../../../../src/app/pages/home/controller/home_controller.dart';
import '../../../extensions/screen_utils_extesion.dart';
import '../../molecules/label/label.dart';

class CategoriesComponent extends StatefulWidget {
  const CategoriesComponent({super.key});

  @override
  State<CategoriesComponent> createState() => _CategoriesComponentState();
}

class _CategoriesComponentState extends State<CategoriesComponent> {
  late HomeController controller;

  @override
  void initState() {
    controller = getIt<HomeController>();
    controller.getAllCategories();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Container(
          width: ScreenUtilsHelpers.screenWidth,
          padding: EdgeInsets.only(left: 10.w),
          height: 100.h,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      splashColor: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {},
                      child: Ink(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: Card(
                          color: index == 0
                              ? AppColors.backGroundFirstItem
                              : Colors.grey.shade100,
                          child: Padding(
                            padding: const EdgeInsets.all(18),
                            child: SvgPicture.asset(
                              controller.categories[index].imgSvg,
                              width:
                                  28.w, // Ajuste a largura conforme necessário
                              height:
                                  28.h, // Ajuste a altura conforme necessário
                              fit: BoxFit
                                  .cover, // Ajuste o modo de ajuste conforme necessário
                            ),
                          ),
                        ),
                      ),
                    ),
                    DSLabel.description(
                      label: controller.categories[index].category,
                    )
                  ],
                );
              },
              separatorBuilder: (context, index) => SizedBox(
                    width: 10.w,
                  ),
              itemCount: controller.categories.length),
        );
      },
    );
  }
}
