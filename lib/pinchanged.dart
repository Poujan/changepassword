import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:pin_code_fields/pin_code_fields.dart';

class PinChanged extends StatelessWidget {
  final bool isFirsttimeUser;

  const PinChanged({Key? key, this.isFirsttimeUser = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text(
          'Change PIN',
          style: TextStyle(
              color: Color(0xff1C2B33),
              fontFamily: 'Montserrat-Black.ttf',
              fontSize: 25,
              fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0),
      ),
      body: Center(
        child: Container(
          height: 220,
          width: 170,
          child: Image.asset(
            'assets/icons/set_mpin_icon.png',
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
    );
  }
}
