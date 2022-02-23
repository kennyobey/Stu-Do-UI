import 'package:flutter/material.dart';
import 'app_colors.dart';

class CustomTextForField extends StatelessWidget {
  final String? name;
  final String? hint;
  final String? label;
  final String? pretext;
  final String? sufText;
  final String? initialValue;
  final Widget? icon, prefixIcon, suffixIcon;
  final TextInputType? keyType;
  final TextEditingController? textEditingController;
  final TextInputAction? keyAction;
  final ValueChanged<String>? validate;
  final ValueChanged<String>? onSubmited;
  final ValueChanged<String>? onChanged;
  final String? validatorText;

  const CustomTextForField(
      {Key? key,
      this.name,
      this.hint,
      this.label,
      this.pretext,
      this.sufText,
      this.initialValue,
      this.icon,
      this.prefixIcon,
      this.suffixIcon,
      this.keyType,
      this.textEditingController,
      this.keyAction,
      this.validate,
      this.onSubmited,
      this.onChanged,
      this.validatorText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      keyboardType: keyType,
      textInputAction: keyAction,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return validatorText;
        }
        return null;
      },
      initialValue: initialValue,
      decoration: InputDecoration(
        isDense: true,
        prefixText: pretext,
        suffixText: sufText,
        labelText: name,
        hintText: hint,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintStyle: Theme.of(context).textTheme.headline4!.copyWith(
              color: AppColors.primarycolor,
              fontFamily: 'Montserrat',
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
        labelStyle: Theme.of(context).textTheme.headline4!.copyWith(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w400,
              color: AppColors.primarycolor,
              fontSize: 15,
            ),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.primarycolor, width: 2),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.primarycolor, width: 2),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        border: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.primarycolor, width: 2),
            borderRadius: BorderRadius.all(Radius.circular(10))),
      ),
    );
  }
}
