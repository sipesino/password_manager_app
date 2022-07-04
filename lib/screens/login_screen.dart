import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:password_manager_app/widgets/key_num.dart';
import 'package:password_manager_app/widgets/pin_code_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController pin1Controller = TextEditingController();
  final TextEditingController pin2Controller = TextEditingController();
  final TextEditingController pin3Controller = TextEditingController();
  final TextEditingController pin4Controller = TextEditingController();
  final TextEditingController pin5Controller = TextEditingController();
  final TextEditingController pin6Controller = TextEditingController();

  int pinIndex = 0;
  String pin = "";
  int pinLength = 6;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  buildSecurityPinText(),
                  const SizedBox(height: 20),
                  buildPinCodeFields(),
                ],
              ),
              const SizedBox(height: 20),
              buildNumPad(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSecurityPinText() {
    return const Text(
      'Enter PIN Code',
      style: TextStyle(
        fontSize: 14,
        color: Colors.white38,
      ),
    );
  }

  Widget buildPinCodeFields() {
    return Stack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            dummyField(),
            dummyField(),
            dummyField(),
            dummyField(),
            dummyField(),
            dummyField(),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PinCodeField(
              controller: pin1Controller,
            ),
            PinCodeField(
              controller: pin2Controller,
            ),
            PinCodeField(
              controller: pin3Controller,
            ),
            PinCodeField(
              controller: pin4Controller,
            ),
            PinCodeField(
              controller: pin5Controller,
            ),
            PinCodeField(
              controller: pin6Controller,
            ),
          ],
        ),
      ],
    );
  }

  SizedBox dummyField() {
    return SizedBox(
      width: 30,
      child: TextFormField(
        enabled: false,
        obscureText: true,
        textAlign: TextAlign.center,
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.all(10),
          border: InputBorder.none,
        ),
        initialValue: '*',
        maxLength: 1,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 21,
          color: Colors.white38,
        ),
      ),
    );
  }

  Widget buildNumPad() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            KeyNum(
              num: 1,
              onPressed: () {
                pinIndexSetup("1");
              },
            ),
            const SizedBox(width: 40),
            KeyNum(
              num: 2,
              onPressed: () {
                pinIndexSetup("2");
              },
            ),
            const SizedBox(width: 40),
            KeyNum(
              num: 3,
              onPressed: () {
                pinIndexSetup("3");
              },
            ),
          ],
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            KeyNum(
              num: 4,
              onPressed: () {
                pinIndexSetup("4");
              },
            ),
            const SizedBox(width: 40),
            KeyNum(
              num: 5,
              onPressed: () {
                pinIndexSetup("5");
              },
            ),
            const SizedBox(width: 40),
            KeyNum(
              num: 6,
              onPressed: () {
                pinIndexSetup("6");
              },
            ),
          ],
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            KeyNum(
              num: 7,
              onPressed: () {
                pinIndexSetup("7");
              },
            ),
            const SizedBox(width: 40),
            KeyNum(
              num: 8,
              onPressed: () {
                pinIndexSetup("8");
              },
            ),
            const SizedBox(width: 40),
            KeyNum(
              num: 9,
              onPressed: () {
                pinIndexSetup("9");
              },
            ),
          ],
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 70,
              height: 70,
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                onPressed: () {},
                child: const Icon(
                  FontAwesomeIcons.fingerprint,
                  size: 25,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(width: 40),
            KeyNum(
              num: 0,
              onPressed: () {
                pinIndexSetup("0");
              },
            ),
            const SizedBox(width: 40),
            SizedBox(
              width: 70,
              height: 70,
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                onPressed: () {
                  clearPin();
                },
                child: const Icon(
                  Icons.backspace,
                  size: 25,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  pinIndexSetup(String text) {
    if (pinIndex < pinLength) {
      setPin(pinIndex, text);
      pin = pin + text;
      pinIndex++;
      if (pinIndex == pinLength) {
        print(pin);
        Navigator.of(context).pushNamed('/');
      }
    }
  }

  setPin(int num, String text) {
    switch (num) {
      case 0:
        pin1Controller.text = text;
        break;
      case 1:
        pin2Controller.text = text;
        break;
      case 2:
        pin3Controller.text = text;
        break;
      case 3:
        pin4Controller.text = text;
        break;
      case 4:
        pin5Controller.text = text;
        break;
      case 5:
        pin6Controller.text = text;
        break;
      default:
    }
  }

  void clearPin() {
    if (pinIndex <= pinLength && pinIndex > 0) {
      pinIndex--;
      setPin(pinIndex, "");
      pin = pin.substring(0, pin.length - 1);
    }
  }
}
