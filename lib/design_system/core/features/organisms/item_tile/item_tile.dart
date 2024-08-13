import 'package:bento_app/design_system/core/features/atoms/tokens/app_colors.dart';
import 'package:bento_app/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
          onTap: () {},
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
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  // Nome
                  Text(
                    widget.item.name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  // Preço - Unidade
                  Row(children: [
                    Text(
                      widget.item.price.toStringAsFixed(2),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: AppColors.primaryColor,
                      ),
                    ),
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
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    transitionBuilder:
                        (Widget child, Animation<double> animation) {
                      return FadeTransition(opacity: animation, child: child);
                    },
                    child: Icon(
                      isFavorited ? Icons.star : Icons.star_border_outlined,
                      key: ValueKey<bool>(isFavorited),
                      color: isFavorited ? Colors.amber : Colors.black26,
                    ),
                  ),
                ),
                const Text(
                  '4.5',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.secondaryColor),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
