import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rork_wiki/features/authentication/screens/login/login.dart';
import 'package:rork_wiki/utils/helpers/helper_functions.dart';

class OnBoardingController {
  // Riverpod Variables
  final StateController<PageController> pageController =
      StateController<PageController>(PageController());
  final StateController<int> currentPageIndex = StateController<int>(0);

  // Stream Getters
  Stream<PageController> get pageControllerStream => pageController.stream;
  Stream<int> get currentPageIndexStream => currentPageIndex.stream;

  // Update current index when page scroll
  void updatePageIndicator(index) {
    currentPageIndex.state = index; // update current index by received index
    // print(currentPageIndex.state);
  }

  // Jump to specific dot selected page
  void dotNavigationClick(index) {
    currentPageIndex.state = index;
    pageController.state.animateToPage(currentPageIndex.state,
        duration: const Duration(milliseconds: 350), curve: Curves.easeInOut);
  }

  // Update current index & jump to next page
  void nextPage(BuildContext context) {
    if (currentPageIndex.state == 2) {
      // Todo: Jump to Login Screen
      RorkWikiHelperFunctions.navigateToScreen(const LoginScreen(), context);
    } else {
      int page = currentPageIndex.state + 1;
      // print(page);
      pageController.state.animateToPage(page,
          duration: const Duration(milliseconds: 350), curve: Curves.easeInOut);
    }
  }

  // Update current index & jump to last page
  void skipPage() {
    currentPageIndex.state = 2;
    pageController.state.animateToPage(currentPageIndex.state,
        duration: const Duration(milliseconds: 550), curve: Curves.easeInOut);
  }

  void dispose() {
    currentPageIndex.dispose();
    pageController.dispose();
  }
}

// Riverpod State Provider
// Make sure to add this outside controller class to avoid error during the call in other widgets
final onBoardingControllerProvider = Provider<OnBoardingController>((ref) {
  return OnBoardingController();
});
