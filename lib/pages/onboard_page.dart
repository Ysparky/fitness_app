import 'package:dots_indicator/dots_indicator.dart';
import 'package:fitness_app/pages/onboard_controller.dart';
import 'package:fitness_app/values/assets.dart';
import 'package:fitness_app/values/colors.dart';
import 'package:fitness_app/values/responsive.dart';
import 'package:fitness_app/widgets/custom_rounded_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OnboardPage extends StatelessWidget {
  OnboardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<OnboardController>(
      create: (_) {
        final controller = OnboardController();
        WidgetsBinding.instance.addPostFrameCallback((_) {
          controller.afterFirstlayout();
        });
        return controller;
      },
      builder: (context, _) => Scaffold(
        body: SafeArea(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: wp(6.0)),
            child: Column(
              children: [
                SizedBox(height: hp(6.0)),
                Consumer<OnboardController>(
                  builder: (_, controller, __) => Text(
                    'Paso ${controller.currentPage.truncate() + 1} de 3',
                    style: Theme.of(context).textTheme.bodyText1.copyWith(
                          color: CustomColors.primaryColor,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                Expanded(
                  child: PageView(
                    controller:
                        Provider.of<OnboardController>(context).pageController,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(CustomAssets.models),
                          SizedBox(height: hp(3.0)),
                          Text(
                            "Bienvenido a\nKatya's Fitness App",
                            style:
                                Theme.of(context).textTheme.bodyText1.copyWith(
                                      color: const Color(0xff707070),
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: hp(3.0)),
                          Text(
                            '''
Entrenamiento personalizado\nque te ayudará a mejorar\ntu salud y estilo de vida''',
                            style:
                                Theme.of(context).textTheme.bodyText1.copyWith(
                                      color: const Color(0xff707070),
                                      fontSize: 18.0,
                                    ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Container(color: Colors.green),
                      Container(color: Colors.blue),
                    ],
                  ),
                ),
                Consumer<OnboardController>(
                  builder: (_, controller, __) {
                    final page = controller.currentPage;
                    var isEnd = page % 1 == 0 && page == 2.0;
                    return CustomRoundedButton(
                      onPressed: () => controller.onNext(context, controller),
                      title: isEnd ? 'Estoy listo!' : 'Siguiente',
                      fontSize: 16.0,
                    );
                  },
                ),
                SizedBox(height: hp(4.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DotsIndicator(
                      dotsCount: 3,
                      position: context.watch<OnboardController>().currentPage,
                      decorator: DotsDecorator(
                        size: const Size.square(9.0),
                        activeSize: const Size(18.0, 9.0),
                        color: Colors.grey.withOpacity(0.4),
                        activeColor: CustomColors.primaryColor,
                        activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: hp(6.0)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
