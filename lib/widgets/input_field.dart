import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String labelText;
  final bool prefix;
  final bool obscureText;
  final String? hintText;
  final Function(String)? onChanged;
  final Icon? icon;
  final Widget? suffixIcon;
  final EdgeInsetsGeometry? padding;

  const InputField({
    super.key,
    required this.labelText,
    this.hintText,
    this.onChanged,
    this.icon,
    this.suffixIcon,
    this.padding,
    this.prefix = false,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    final Widget child = TextField(
      onChanged: onChanged,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        icon: prefix == false ? icon : null,
        prefixIcon: prefix == true ? icon : null,
        suffixIcon: suffixIcon,
      ),
    );
    return Padding(padding: padding ?? EdgeInsets.zero, child: child);
  }
}
