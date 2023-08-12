import 'package:ai_match_make_mobile_app/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({super.key});

  @override
  Widget build(BuildContext context) {
    const pageDecoration = PageDecoration(
      imageFlex: 3,
      bodyFlex: 0,
      imagePadding: EdgeInsets.only(top: 44),
    );

    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: AppLocalizations.of(context).onboardingPageTitle1,
          body: '',
          image: Image.asset('assets/images/introduction_page/onboarding1.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: AppLocalizations.of(context).onboardingPageTitle2,
          body: '',
          image: Image.asset('assets/images/introduction_page/onboarding2.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: AppLocalizations.of(context).onboardingPageTitle3,
          body: '',
          image: Image.asset('assets/images/introduction_page/onboarding3.png'),
          decoration: pageDecoration,
        ),
      ],
      globalFooter: SizedBox(
        width: double.infinity,
        height: 60,
        child: ElevatedButton(
          // TODO: Change color to theme design
          child: Text(
            AppLocalizations.of(context).onboardingPageBeginButtonText,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          onPressed: () {
            HapticFeedback.lightImpact();
          },
        ),
      ),
      showDoneButton: false,
      showNextButton: false,
    );
  }
}
