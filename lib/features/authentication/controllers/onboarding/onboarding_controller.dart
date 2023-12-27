import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  // GetX Instance
  static OnBoardingController get instance => Get.find();

  // Variables
  final pageController = PageController();
  // When changing the value of an observable variable, automatically updates all the widgets that use this variable.
  Rx<int> currentPageIndex = 0.obs;

  // Update current index when page scroll
  void updatePageIndicator(index) =>
      currentPageIndex.value = index; // update current index by received index

  // Jump to specific dot selected page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index); // jump to specific page
  }

  // Update current index & jump to next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      // Get.to(LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.animateToPage(page,
          duration: const Duration(milliseconds: 350), curve: Curves.easeInOut);
    }
  }

  // Update current index & jump to last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpTo(2);
  }
}
