import 'package:DevQuiz/core/core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NextButtonWidget extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color fontColor;
  final Color borderColor;
  final VoidCallback onTap;

  const NextButtonWidget(
      {Key? key,
      required this.label,
      required this.backgroundColor,
      required this.fontColor,
      required this.borderColor,
      required this.onTap})
      : super(key: key);

  NextButtonWidget.green({required String label, required VoidCallback onTap})
      : backgroundColor = AppColors.darkGreen,
        fontColor = AppColors.white,
        borderColor = AppColors.darkGreen,
        onTap = onTap,
        label = label;

  NextButtonWidget.white({required String label, required VoidCallback onTap})
      : backgroundColor = AppColors.white,
        fontColor = AppColors.grey,
        borderColor = AppColors.border,
        onTap = onTap,
        label = label;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(backgroundColor),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
            side: MaterialStateProperty.all(BorderSide(color: borderColor))),
        onPressed: onTap,
        child: Text(
          label,
          style: GoogleFonts.notoSans(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: fontColor,
          ),
        ),
      ),
    );
  }
}
