import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ui_trace_2021_11_04/input_name_view.dart';
import 'package:ui_trace_2021_11_04/wide_width_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 128,),
            const FlutterLogo(
              size: 60,
            ),
            const SizedBox(
              height: 32,
            ),
            const Text(
                'Sign up to spend more time with your friends IRL and discover fun things to do together.',
            style: TextStyle(fontSize: 16),textAlign: TextAlign.center,),
            const SizedBox(
              height: 64,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 64),
              child: Column(
                children: [
                  WideWidthButton(
                      text: 'Continue with Google',
                      textColor: Colors.white,
                      backgroundColor: Colors.blue,
                      tapped: () {}),
                  const SizedBox(
                    height: 16,
                  ),
                  WideWidthButton(
                      text: 'Sign up with email or phone',
                      textColor: Colors.grey,
                      backgroundColor: Colors.white70,
                      tapped: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                          return const InputNameView();
                        }));
                      }),
                ],
              ),
            ),
            const SizedBox(height: 16,),
            RichText(text: TextSpan(children: [
              TextSpan(text: 'Already have an account? ', style: TextStyle(color: Colors.black),),
              TextSpan(text: 'Log in', style: TextStyle(color: Colors.blue), recognizer: TapGestureRecognizer() ..onTap = (){}),
            ]))
          ],
        ),
      ),
    );
  }
}
