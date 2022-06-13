import 'package:flutter/cupertino.dart';
import 'package:travel/misc/colors.dart';
import 'package:travel/widgets/appText.dart';

class AppButton extends StatelessWidget {
  final Color labelColor;
  final Color backgroundColor;
  double labelSize;
  double size;
  final Color borderColor;
  final String label;
  final FontWeight labelWeight;

  AppButton(
      {required this.labelColor,
      required this.backgroundColor,
      required this.labelSize,
      this.size = 60,
      required this.borderColor,
      required this.label,
      this.labelWeight = FontWeight.normal});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color: AppColors.buttonBackGroundColor,
        ),
        child: AppText(
          text: label,
          size: labelSize,
          color: labelColor,
          weight: labelWeight,
        ));
  }
}
