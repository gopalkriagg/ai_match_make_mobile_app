import 'package:ai_match_make_mobile_app/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ChooseLogInOrRegisterPage extends StatelessWidget {
  const ChooseLogInOrRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/person_holding_bat.png',
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'AI',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 36.8,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  AppLocalizations.of(context).appNameShort,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 36.8,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Image.asset(
                  'assets/images/handshake_white.png',
                  scale: 2.2,
                ),
                const SizedBox(height: 120),
                Text(
                  AppLocalizations.of(context).makeMatchInAsLittleAsOneMinute,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    minimumSize:
                        Size(MediaQuery.of(context).size.width - 40, 50),
                  ),
                  child: Text(
                    AppLocalizations.of(context).register,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    context.go('/introduction');
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize:
                        Size(MediaQuery.of(context).size.width - 40, 50),
                    backgroundColor: Colors.white,
                  ),
                  child: Text(
                    AppLocalizations.of(context).login,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
