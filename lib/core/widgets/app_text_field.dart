import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:styled_widget/styled_widget.dart';

import '../constants/app_colors.dart';

enum BorderStyle { underline, circular }

class AppTextField extends StatefulWidget {
  final FormFieldValidator<String>? validator;
  final TextInputType textInputType;
  final EdgeInsets contentPadding;
  final String? hintText;
  final String? labelText;
  final Widget? prefixWidget;
  final Widget? suffixWidget;
  final bool obscureText;
  final bool isDense;
  final int maxLength;
  final int? maxLine;
  final Key? key1;
  final bool digitsOnly;
  final Color? labelColor;
  final String? prefixText;
  final bool readOnly;
  final TextInputAction textInputAction;
  final bool enableFocusBorder;
  final ValueChanged<String>? onChanged;
  final TextCapitalization textCapitalization;
  final TextEditingController controller;
  final Color? textColor;
  final VoidCallback? onTap;
  final String? initialValue;
  final InputDecoration? decoration;

  const AppTextField({
    super.key,
    this.validator,
    this.decoration,
    this.obscureText = false,
    this.textCapitalization = TextCapitalization.none,
    this.digitsOnly = false,
    required this.controller,
    this.textInputType = TextInputType.text,
    this.contentPadding = const EdgeInsets.all(16),
    this.prefixWidget,
    this.suffixWidget,
    this.hintText,
    this.textInputAction = TextInputAction.next,
    this.maxLength = 50,
    this.enableFocusBorder = true,
    this.onChanged,
    this.textColor,
    this.prefixText,
    this.labelColor,
    this.labelText,
    this.readOnly = false,
    this.maxLine = 1,
    this.key1,
    this.onTap,
    this.initialValue,
    this.isDense = false,
  });

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  late bool isPasswordInVisible;

  @override
  void initState() {
    isPasswordInVisible = widget.obscureText;
    super.initState();
  }

  @override
  Widget build(BuildContext context) => TextFormField(
          key: widget.key1,
          readOnly: widget.readOnly,
          cursorColor: colorPrimary,
          validator: widget.validator,
          obscureText: isPasswordInVisible,
          textCapitalization: widget.textCapitalization,
          textInputAction: widget.textInputAction,
          controller: widget.controller,
          onChanged: widget.onChanged,
          initialValue: widget.initialValue,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          maxLines: widget.maxLine,
          onTap: widget.onTap,
          inputFormatters: widget.digitsOnly
              ? <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(widget.maxLength)
                ]
              : [],
          keyboardType: widget.textInputType,
          decoration: widget.decoration ??
              InputDecoration(
                  suffixIconColor: colorPrimary,
                  isDense: widget.isDense,
                  suffixIcon: widget.suffixWidget ??
                      (widget.obscureText
                          ? (isPasswordInVisible
                              ? IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isPasswordInVisible = false;
                                    });
                                  },
                                  icon: const Icon(Icons.visibility_off))
                              : IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isPasswordInVisible = true;
                                    });
                                  },
                                  icon: const Icon(Icons.visibility)))
                          : const SizedBox()),
                  prefixIcon: widget.prefixWidget,
                  filled: true,
                  prefixText: widget.prefixText,
                  fillColor: colorLightGrey,
                  border: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(18))),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(18))),
                  errorBorder: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(18))),
                  focusedErrorBorder: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(18))),
                  errorStyle: TextStyle(fontSize: 12.sp),
                  labelStyle: TextStyle(color: widget.labelColor, fontSize: 16),
                  contentPadding: widget.contentPadding,
                  labelText: widget.labelText,
                  hintText: widget.hintText,
                  hintStyle: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    color: Colors.black.withOpacity(0.5),
                    fontWeight: FontWeight.w600,
                  )))
      .padding(bottom: 0);
}
