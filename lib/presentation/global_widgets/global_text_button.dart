import 'package:advanced_app/presentation/presentation_managers/color_manager.dart';
import 'package:advanced_app/presentation/presentation_managers/values_managers.dart';
import 'package:flutter/material.dart';

class GlobalTextButton extends StatelessWidget {
  final Function()? onPressed;
  final String? text;
  const GlobalTextButton({
    super.key,
    this.onPressed,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text ?? 'default text',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: ColorManager.primary,
          fontSize: AppSize.s14,
          
        ),
      ),
    );
  }
}
