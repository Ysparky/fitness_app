import 'package:fitness_app/values/assets.dart';
import 'package:fitness_app/values/responsive.dart';
import 'package:fitness_app/widgets/custom_rounded_button.dart';
import 'package:fitness_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: hp(100),
        padding: EdgeInsets.symmetric(horizontal: wp(12.0)),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(CustomAssets.loginBg),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: hp(2.0)),
              IconButton(
                icon: SvgPicture.asset(CustomAssets.back),
                onPressed: () => Navigator.pop(context),
              ),
              SizedBox(height: hp(21.5)),
              Text(
                "Katya's fitness",
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(color: Colors.white, fontSize: 36.0),
              ),
              SizedBox(height: hp(4.0)),
              Text(
                'Unete a esta gran familia',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    .copyWith(color: Colors.white, fontSize: 16.0),
              ),
              SizedBox(height: hp(4.0)),
              const CustomTextFormField(
                asset: CustomAssets.person,
                hint: 'Email',
              ),
              SizedBox(height: hp(2.0)),
              const CustomTextFormField(
                asset: CustomAssets.password,
                hint: 'Password',
              ),
              SizedBox(height: hp(2.0)),
              CustomRoundedButton(
                title: 'Registrarme',
                onPressed: () {},
                fontSize: 14.0,
              ),
              SizedBox(height: hp(1.5)),
              Text(
                'o',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(color: Colors.white, fontSize: 13.0),
              ),
              SizedBox(height: hp(2.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const RoundedSocialMediaButton(
                    asset: CustomAssets.facebook,
                  ),
                  const RoundedSocialMediaButton(
                    asset: CustomAssets.google,
                  ),
                  const RoundedSocialMediaButton(
                    asset: CustomAssets.mail,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class RoundedSocialMediaButton extends StatelessWidget {
  const RoundedSocialMediaButton({
    Key key,
    @required this.asset,
  }) : super(key: key);

  final String asset;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      textColor: Colors.red,
      padding: const EdgeInsets.all(16.0),
      shape: const CircleBorder(side: BorderSide(color: Colors.white)),
      child: SvgPicture.asset(
        asset,
        height: 22.0,
      ),
    );
  }
}
