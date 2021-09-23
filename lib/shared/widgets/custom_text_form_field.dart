import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextInputType? inputType;
  final Widget? suffixIcon;
  final ValueSetter? onSave;
  final ValueSetter? onChange;
  final int? maxLines;
  const CustomTextFormField(
      {Key? key,
      this.inputType,
      this.suffixIcon,
      this.onSave,
      this.onChange,
      this.maxLines})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSave,
      onChanged: onChange,
      maxLines: maxLines,
      keyboardType: inputType,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: Colors.transparent,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(
              color: Color(0xFFCCCCCC),
            )),
      ),
    );
  }
}
