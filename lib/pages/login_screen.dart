import 'package:fitness_app/values/assets.dart';
import 'package:fitness_app/values/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginPage extends StatelessWidget {
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
                onPressed: () {},
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
              TextFormField(
                decoration: InputDecoration(
                  isDense: true,
                  prefixIcon: SvgPicture.asset(
                    CustomAssets.person,
                    fit: BoxFit.scaleDown,
                  ),
                  hintText: 'Email',
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
              ),
              SizedBox(height: hp(2.0)),
              TextFormField(
                decoration: InputDecoration(
                  isDense: true,
                  prefixIcon: SvgPicture.asset(
                    CustomAssets.password,
                    fit: BoxFit.scaleDown,
                  ),
                  hintText: 'Password',
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
              ),
              SizedBox(height: hp(2.0)),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xff763DB0),
                    elevation: 0,
                    primary: Colors.black,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(60.0)),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 17),
                  ),
                  child: Text(
                    'Registrarme',
                    style: Theme.of(context).textTheme.headline6.copyWith(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5),
                  ),
                ),
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
                  MaterialButton(
                    onPressed: () {},
                    textColor: Colors.red,
                    padding: const EdgeInsets.all(16.0),
                    shape: const CircleBorder(
                      side: BorderSide(color: Colors.white),
                    ),
                    child: SvgPicture.asset(CustomAssets.facebook),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    textColor: Colors.red,
                    padding: const EdgeInsets.all(16.0),
                    shape: const CircleBorder(
                      side: BorderSide(color: Colors.white),
                    ),
                    child: SvgPicture.asset(CustomAssets.google),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    textColor: Colors.red,
                    padding: const EdgeInsets.all(16.0),
                    shape: const CircleBorder(
                      side: BorderSide(color: Colors.white),
                    ),
                    child: SvgPicture.asset(CustomAssets.mail),
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
