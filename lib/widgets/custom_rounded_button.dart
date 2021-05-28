import 'package:fitness_app/values/colors.dart';
import 'package:flutter/material.dart';

class CustomRoundedButton extends StatelessWidget {
  const CustomRoundedButton({
    Key key,
    @required this.title,
    this.bgColor = CustomColors.primaryColor,
    this.elevation = 0,
  }) : super(key: key);

  final String title;
  final Color bgColor;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: bgColor,
          elevation: elevation,
          primary: Colors.black,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(60.0)),
          ),
          padding: const EdgeInsets.symmetric(vertical: 17),
        ),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6.copyWith(
              color: Colors.white,
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5),
        ),
      ),
    );
  }
}
