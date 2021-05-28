import 'package:fitness_app/values/assets.dart';
import 'package:fitness_app/values/colors.dart';
import 'package:fitness_app/values/responsive.dart';
import 'package:fitness_app/values/routes.dart';
import 'package:fitness_app/widgets/custom_rounded_button.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  WelcomePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: wp(6.0)),
      height: hp(100.0),
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(CustomAssets.welcomeBg),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: hp(7.0)),
          Text(
            'Cuerpo sano mente sana',
            style: Theme.of(context).textTheme.bodyText1.copyWith(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: CustomColors.primaryColor),
          ),
          SizedBox(height: hp(11.0)),
          Image.asset(CustomAssets.run, fit: BoxFit.cover),
          const Spacer(),
          Text(
            'No eres lo que logras\n eres lo que superas',
            style: Theme.of(context)
                .textTheme
                .headline6
                .copyWith(fontSize: 18.0, color: Colors.white),
          ),
          SizedBox(height: hp(8.0)),
          CustomRoundedButton(
            title: 'Comenzemos',
            bgColor: Colors.white,
            textColor: CustomColors.primaryColor,
            fontSize: 18.0,
            onPressed: () => Navigator.pushNamed(context, Routes.login),
          ),
          SizedBox(height: hp(5.0)),
        ],
      ),
    );
  }
}
