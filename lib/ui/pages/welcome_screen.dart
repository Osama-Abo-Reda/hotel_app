import 'package:flutter/material.dart';
import 'package:hotel_app/ui/pages/login_screen.dart';
import 'package:hotel_app/ui/pages/register_screen.dart';
import 'package:hotel_app/ui/shared/components/constants.dart';
import 'package:hotel_app/ui/shared/components/widgets.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Let\'s you in',
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.w900,
                  letterSpacing: .5,
                ),
              ),
              const SizedBox(
                height: 72,
              ),
              customButtonForSocialMedia(
                image: 'assets/icons/icons8-facebook.png',
                text: 'Continue with Facebook',
                onTap: () {},
              ),
              const SizedBox(
                height: 24,
              ),
              customButtonForSocialMedia(
                image: 'assets/icons/icons8-google.png',
                text: 'Continue with Google',
                onTap: () {},
              ),
              const SizedBox(
                height: 24,
              ),
              customButtonForSocialMedia(
                image: 'assets/icons/icons8-apple.png',
                text: 'Continue with Apple',
                onTap: () {},
              ),
              const SizedBox(
                height: 54,
              ),
              defaultDivider(text: 'or'),
              const SizedBox(
                height: 54,
              ),
              defaultButton(
                title: 'Sign in with password',
                color: defualtButtonColor,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 54,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don\'t have account?',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.3,
                    ),
                  ),
                  TextButton(
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        color: defualtButtonColor,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.3,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
