import '../../atoms/tokens/app_typography.dart';
import 'label_component.dart';

class DSLabel extends LabelComponent {
  DSLabel.title({
    super.key,
    super.color,
    required super.label,
    super.maxLines,
    super.overflow,
  }) : super(
          style: AppTypography.title(color: color),
        );

  DSLabel.description({
    super.key,
    super.color,
    required super.label,
    super.maxLines,
    super.overflow,
  }) : super(
          style: AppTypography.description(color: color),
        );

  DSLabel.subTitle({
    super.key,
    super.color,
    required super.label,
    super.maxLines,
    super.overflow,
  }) : super(
          style: AppTypography.subTitle(color: color),
        );

  DSLabel.infoDescription({
    super.key,
    super.color,
    required super.label,
    super.maxLines,
    super.overflow,
  }) : super(
          style: AppTypography.infoDescription(color: color),
        );
}
