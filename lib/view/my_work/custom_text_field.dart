
import 'package:doctor_app/constant/App_Colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final TextInputType keyboardType;
  final bool obscureText;
  final String hint;
  final int? maxLines;
  final TextStyle? hintStyle;
  final Color cursorColor;
  final bool enabled;
  final Function(String)? onChanged;

  const CustomTextField({
    Key? key,
    this.cursorColor = AppColors.kBlack,
     this.controller,
     this.focusNode,
    required this.hint,
     this.hintStyle,
     this.maxLines,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.enabled = true,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextField(
        controller: controller,
        focusNode: focusNode,
        keyboardType: keyboardType,
        cursorColor: cursorColor,
        obscureText: obscureText,
        enabled: enabled,
        maxLines: maxLines,
        onTapOutside: (event)=>FocusScope.of(context).unfocus(),

        style: const TextStyle(
          fontSize: 14,
          color: AppColors.kPrimaryTextBlackColor,
          fontWeight: FontWeight.w400,
        ),
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: hintStyle,
          filled: true,
          fillColor: AppColors.kWhiteF7,
          contentPadding: const EdgeInsets.all(13),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.kWhiteF7),
            borderRadius: BorderRadius.circular(5),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.kWhiteF7),
            borderRadius: BorderRadius.circular(5),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.kWhiteF7),
            borderRadius: BorderRadius.circular(5),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.kWhiteF7),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        onChanged: onChanged,
      ),
    );
  }
}
