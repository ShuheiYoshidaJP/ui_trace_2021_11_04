import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_trace_2021_11_04/wide_width_button.dart';

class InputNameView extends StatefulWidget {
  const InputNameView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _InputNameViewState();
  }
}

class _InputNameViewState extends State<InputNameView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            Text(
              'Enter your name',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
            ),
            SizedBox(
              height: 32,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [TextField(), Text('First')],
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Column(
                      children: [TextField(), Text('Last')],
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: WideWidthButton(
                    text: 'Sync contacts and continue',
                    textColor: Colors.white,
                    backgroundColor: Colors.grey,
                    tapped: () {})),
            SizedBox(height: 8,),
            Text(
              'Continue without syncing contacts',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 8,),
          ],
        ),
      ),
    );
  }
}
