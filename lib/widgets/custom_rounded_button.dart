import 'package:fitness_app/values/colors.dart';
import 'package:fitness_app/values/responsive.dart';
import 'package:flutter/material.dart';

class CustomRoundedButton extends StatelessWidget {
  const CustomRoundedButton({
    Key key,
    @required this.title,
    @required this.fontSize,
    @required this.onPressed,
    this.bgColor = CustomColors.primaryColor,
    this.textColor = Colors.white,
    this.elevation = 0,
  }) : super(key: key);

  final String title;
  final Color bgColor;
  final Color textColor;
  final double elevation;
  final double fontSize;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: bgColor,
          elevation: elevation,
          primary: Colors.black,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(60.0)),
          ),
          padding: EdgeInsets.symmetric(vertical: hp(1.5)),
        ),
        child: Text(
          title,
          style: Theme.of(context).textTheme.bodyText1.copyWith(
                color: textColor,
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5,
              ),
        ),
      ),
    );
  }
}
