import 'package:flutter/material.dart';

import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/shared/models/awnser_model.dart';

class AwnserWidget extends StatelessWidget {
  final AwnserModel awnser;
  final bool isSelected;
  final VoidCallback onTap;
  final bool disabled;

  const AwnserWidget({
    Key? key,
    required this.awnser,
    required this.isSelected,
    required this.onTap,
    required this.disabled,
  }) : super(key: key);

  Color get _selectedColorRight =>
      awnser.isRight ? AppColors.darkGreen : AppColors.darkRed;

  Color get _selectedBorderRight =>
      awnser.isRight ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedColorCardRight =>
      awnser.isRight ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedBorderCardRight =>
      awnser.isRight ? AppColors.green : AppColors.red;

  TextStyle get _selectedTextStyleRight =>
      awnser.isRight ? AppTextStyles.bodyDarkGreen : AppTextStyles.bodyDarkRed;

  IconData get _selectedIconRight => awnser.isRight ? Icons.check : Icons.close;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: IgnorePointer(
        ignoring: disabled,
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                color:
                    this.isSelected ? _selectedColorCardRight : AppColors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.fromBorderSide(BorderSide(
                    color: this.isSelected
                        ? _selectedBorderCardRight
                        : AppColors.white))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    awnser.title,
                    style: this.isSelected
                        ? _selectedTextStyleRight
                        : AppTextStyles.body,
                  ),
                ),
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                      color: this.isSelected
                          ? _selectedColorRight
                          : AppColors.white,
                      borderRadius: BorderRadius.circular(500),
                      border: Border.fromBorderSide(BorderSide(
                          color: this.isSelected
                              ? _selectedBorderRight
                              : AppColors.border))),
                  child: this.isSelected
                      ? Icon(
                          Icons.check,
                          size: 16,
                          color: Colors.white,
                        )
                      : null,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
