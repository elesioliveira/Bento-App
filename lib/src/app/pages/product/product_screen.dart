import 'package:bento_app/design_system/core/extensions/screen_utils_extesion.dart';
import 'package:bento_app/design_system/core/features/atoms/tokens/gaps.dart';
import 'package:bento_app/design_system/core/features/molecules/label/label.dart';
import 'package:bento_app/model/product_model.dart';
import 'package:flutter/material.dart';
import '../../../../design_system/core/features/atoms/tokens/app_colors.dart';
import '../../../../design_system/core/features/molecules/banner_slides/slide_widgets.dart';
import '../../../../design_system/core/features/molecules/icon_info_product/icon_qualitity_product.dart';
import '../../../../design_system/core/features/molecules/star_like/star_like_animation_widget.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key, required this.item});
  final Product item;

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  bool isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: Container(
        height: 100.h,
        width: ScreenUtilsHelpers.screenWidth,
        decoration: BoxDecoration(
          color: Colors.white, // Cor do container
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300, // Cor da sombra
              spreadRadius: 1, // Espalhamento da sombra
              blurRadius: 1, // Suavidade da sombra
              offset: const Offset(0, -1), // Move a sombra para cima (x, y)
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DSGaps.h12,
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DSLabel.infoDescription(
                  label: 'Price',
                  color: Colors.grey.shade500,
                ),
                DSGaps.h8,
                Row(
                  children: [
                    DSLabel.title(
                        label: '\$ ${widget.item.offert.toStringAsFixed(2)}'),
                    DSGaps.h6,
                    DSLabel.infoDescription(
                      label: '\$${widget.item.price.toStringAsFixed(2)}',
                      color: Colors.grey.shade500,
                      decoration: TextDecoration.lineThrough,
                    )
                  ],
                ),
              ],
            ),
            const Expanded(child: SizedBox()),
            Align(
              alignment: Alignment.centerLeft,
              child: Material(
                borderRadius: BorderRadius.circular(30),
                child: InkWell(
                  borderRadius: BorderRadius.circular(30),
                  splashColor: Colors.white38,
                  onTap: () {},
                  child: Ink(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: AppColors.primaryColor,
                      ),
                      width: 200.w,
                      height: 45.h,
                      child: Center(
                        child: DSLabel.subTitle(
                          label: 'Add to Cart',
                          overflow: TextOverflow.ellipsis,
                        ),
                      )),
                ),
              ),
            ),
            DSGaps.h6
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: CustomScrollView(
        physics: const NeverScrollableScrollPhysics(),
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    flex: 2,
                    child: Stack(
                      children: [
                        SlideWidets(
                          imgSvg: [
                            widget.item.imgSvg,
                            widget.item.imgSvg,
                            widget.item.imgSvg,
                          ],
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                icon: Icon(
                                  Icons.chevron_left,
                                  size: 25.h,
                                ),
                              ),
                              const Expanded(child: SizedBox()),
                              StarAnimationWidget(
                                  isFavorited: isFavorited,
                                  colorIsFavorited: Colors.redAccent,
                                  iconIsFavorited: Icons.favorite,
                                  icon: Icons.favorite_border_outlined),
                              DSGaps.h12
                            ],
                          ),
                        )
                      ],
                    )),
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.only(left: 10.w, right: 10.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                                width: ScreenUtilsHelpers.screenWidth / 1.7,
                                child: DSLabel.title(
                                  label: widget.item.name,
                                )),
                            const Expanded(child: SizedBox()),
                            Container(
                                padding: EdgeInsets.only(
                                    left: 7.w,
                                    right: 7.w,
                                    top: 2.h,
                                    bottom: 2.h),
                                decoration: BoxDecoration(
                                    border: Border.all(width: 0.005),
                                    borderRadius: BorderRadius.circular(20)),
                                child: StarAnimationWidget(
                                    valueIcon: '4.5',
                                    colorIsFavorited: Colors.amber,
                                    iconIsFavorited: Icons.star,
                                    icon: Icons.star_border_outlined,
                                    isFavorited: isFavorited))
                          ],
                        ),
                        DSGaps.v8,
                        DSLabel.description(
                          label: 'Shop: Alish Mart',
                          color: Colors.grey.shade500,
                        ),
                        DSGaps.v8,
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            DSGaps.h4,
                            Expanded(
                              child: Container(
                                height: 100.h,
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(8)),
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    IconQualitityProduct(
                                      urlImg:
                                          'lib/design_system/assets/icons/vegetarian.svg',
                                      color: AppColors.vegetarianColor,
                                      infoProduct: 'Vegetarian',
                                    ),
                                    IconQualitityProduct(
                                      urlImg:
                                          'lib/design_system/assets/icons/halalFood.svg',
                                      color: AppColors.halalColor,
                                      infoProduct: 'Halal Food',
                                    ),
                                    IconQualitityProduct(
                                      urlImg:
                                          'lib/design_system/assets/icons/gluten.svg',
                                      color: AppColors.glutenColor,
                                      infoProduct: 'Gluten-free',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            DSGaps.h4,
                          ],
                        ),
                        DSGaps.v12,
                        DSLabel.title(label: 'Details'),
                        DSGaps.v8,
                        DSLabel.description(
                          label:
                              'ore commonly know as green cabbage, the cannonball cabbage is one of the most popular cabbage varieties. It is so named for the way its leaves wound tightly over one.',
                          color: Colors.grey.shade700,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.justify,
                          sizeFont: 11.5.sp,
                          maxLines: 4,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
