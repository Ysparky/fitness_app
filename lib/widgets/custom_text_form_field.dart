import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key key,
    @required this.asset,
    @required this.hint,
  }) : super(key: key);

  final String asset;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        isDense: true,
        prefixIcon: SvgPicture.asset(
          asset,
          fit: BoxFit.scaleDown,
        ),
        hintText: hint,
        hintStyle: const TextStyle(
          color: Colors.white,
          fontSize: 14.0,
        ),
        filled: true,
        fillColor: Colors.white.withOpacity(0.50),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.0),
          borderSide: const BorderSide(color: Colors.transparent),
        ),
      ),
    );
  }
}
