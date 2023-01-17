import 'package:flutter/material.dart';
import 'package:hotel_app/api/api_provider.dart';
import 'package:hotel_app/logic/login_domain.dart';
import 'package:hotel_app/ui/pages/register_screen.dart';
import 'package:hotel_app/ui/shared/components/constants.dart';
import 'package:hotel_app/ui/shared/components/widgets.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  bool checkBox = false;
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                'Login to your Account',
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.w900,
                  letterSpacing: .5,
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              defaultTextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  // emailController.text = value;
                },
                hint: 'Email',
                prefix: Icons.email_outlined,
              ),
              const SizedBox(
                height: 28,
              ),
              defaultTextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  onChanged: (value) {
                    // passwordController.text = value;
                  },
                  hint: 'Password'),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    value: checkBox,
                    onChanged: (value) {
                      //setstate
                      checkBox = value!;
                    },
                    side: BorderSide(
                      width: 2.5,
                      color: defualtButtonColor,
                    ),
                    checkColor: Colors.white,
                    activeColor: defualtButtonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  const Text(
                    'Remember me',
                    style: TextStyle(
                      letterSpacing: .3,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              defaultButton(
                title: 'Sign in',
                onPressed: () async {
                  UserLogin login = UserLogin();
                  var response = await login.login(body: {
                    'email': emailController.text,
                    'password': passwordController.text,
                  });
                  print(response['status']);
                },
                color: defualtButtonColor,
              ),
              TextButton(
                onPressed: (() {}),
                child: Text(
                  'Forgot the password?',
                  style: TextStyle(
                    color: defualtButtonColor,
                    letterSpacing: .3,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              defaultDivider(text: 'or continue with'),
              const SizedBox(
                height: 28,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  Container(
                    width: 84,
                    height: 54,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: .6,
                        color: Colors.black12,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(
                        12,
                      ),
                    ),
                    child: const Image(
                      image: AssetImage(
                        'assets/icons/icons8-facebook.png',
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    width: 84,
                    height: 54,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: .6,
                        color: Colors.black12,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(
                        12,
                      ),
                    ),
                    child: const Image(
                      image: AssetImage(
                        'assets/icons/icons8-google.png',
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    width: 84,
                    height: 54,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: .6,
                        color: Colors.black12,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(
                        12,
                      ),
                    ),
                    child: const Image(
                      image: AssetImage(
                        'assets/icons/icons8-apple.png',
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              const SizedBox(
                height: 16,
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
