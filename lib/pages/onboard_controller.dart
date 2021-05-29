import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class OnboardController extends ChangeNotifier {
  final PageController pageController = PageController();
  double _currentPage = 0;
  double get currentPage => _currentPage;

  void afterFirstlayout() {
    pageController.addListener(() {
      final page = pageController.page;
      _currentPage = page;
      notifyListeners();
    });
  }

  void onNext(BuildContext context, OnboardController controller) {
    if (controller.currentPage == 2) {
      // Navigator.pushReplacementNamed(context, );}
      print('xd');
    } else {
      controller.pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
