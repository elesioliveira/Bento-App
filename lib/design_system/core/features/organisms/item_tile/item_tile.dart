import 'package:bento_app/design_system/core/features/molecules/label/label.dart';
import 'package:bento_app/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../src/app/pages/product/product_screen.dart';
import '../../molecules/star_like/star_like_animation_widget.dart';

class ItemTile extends StatefulWidget {
  final Product item;
  final Color? backgroundColorCard;
  final bool isFavorited;

  const ItemTile({
    super.key,
    required this.item,
    this.backgroundColorCard,
    this.isFavorited = false,
  });

  @override
  State<ItemTile> createState() => _ItemTileState();
}

class _ItemTileState extends State<ItemTile> {
  bool isFavorited = false;

  @override
  void initState() {
    isFavorited = widget.isFavorited;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Conteúdo
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ProductScreen(
                        item: widget.item,
                      )),
            );
          },
          child: Card(
            elevation: 1,
            color: widget.backgroundColorCard ?? Colors.grey.shade400,
            shadowColor: Colors.grey.shade300,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Imagem
                  Expanded(
                    child: Hero(
                      tag: widget.item.imgSvg,
                      child: SvgPicture.asset(
                        widget.item.imgSvg,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),

                  // Nome
                  DSLabel.description(label: widget.item.name),

                  // Preço - Unidade
                  Row(children: [
                    DSLabel.description(
                      label: "\$${widget.item.price.toStringAsFixed(2)}",
                      color: Colors.black,
                    )
                  ]),
                ],
              ),
            ),
          ),
        ),

        // Ícone de Favorito
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: EdgeInsets.only(right: 15.w, top: 10.h),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: () {
                      setState(() {
                        isFavorited = !isFavorited;
                      });
                    },
                    child: StarAnimationWidget(
                        valueIcon: '4.5',
                        isFavorited: isFavorited,
                        colorIsFavorited: Colors.amber,
                        iconIsFavorited: Icons.star,
                        icon: Icons.star_border_outlined))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
