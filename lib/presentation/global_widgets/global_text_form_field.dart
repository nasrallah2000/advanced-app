import 'package:advanced_app/presentation/presentation_managers/exports.dart';
import 'package:flutter/material.dart';

class GlobalTextFormField extends StatelessWidget {
  final TextInputType? textInputType;
  final TextEditingController? textController;
  final InputDecoration? decoration;
  String? Function(String?)? validator;

  GlobalTextFormField({
    super.key,
    this.textInputType,
    this.textController,
    this.decoration,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType ?? TextInputType.text,
      controller: textController,
      decoration: decoration,
      validator: validator ??
          (String? value) {
            if (value!.isEmpty) {
              return 'Please fill this field';
            }
          },

      
    );
  }
}
