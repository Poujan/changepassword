import 'package:changepassword/newpin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:pin_code_fields/pin_code_fields.dart';

class SetMpinView extends StatelessWidget {
  final bool isFirsttimeUser;

  const SetMpinView({Key? key, this.isFirsttimeUser = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return BaseView<SetMpinVM>(

    //   builder: (context, vm, child) {
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
        backgroundColor: const Color(0),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xff1C2B33),
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Image.asset('assets/icons/set_mpin_icon.png'),
          const SizedBox(
            height: 50.0,
          ),
          RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
              text: 'Enter your current PIN',
              style: TextStyle(
                color: Color(0xff1C2B33),
                fontWeight: FontWeight.w300,
                fontSize: 20.0,
              ),
            ),
          ),
          const SizedBox(
            height: 50.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: PinCodeTextField(
              // focusNode: focusNodePin,

              appContext: context,

              inputFormatters: [FilteringTextInputFormatter.digitsOnly],

              autoFocus: false,

              length: 4,
              cursorColor: Colors.blue,

              obscureText: false,
              // controller: vm.mpinController,

              animationType: AnimationType.fade,

              pinTheme: PinTheme(
                activeFillColor: const Color.fromARGB(255, 255, 255, 255),
                activeColor: Colors.blue,
                inactiveColor: Colors.black,
                selectedColor: Colors.blue,
              ),

              enabled: true,

              backgroundColor: Colors.transparent,

              animationDuration: const Duration(milliseconds: 300),

              keyboardType: TextInputType.number,

              textStyle: const TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
              ),

              onCompleted: (v) {},

              onChanged: (value) {
                print(value);
              },
            ),
          ),
          const SizedBox(
            height: 50.0,
          ),
          // MytoneButton(

          //             onTap: () {

          //               vm.ChangeMpin(context: context);

          //             },

          //             title: 'Change'),

          //         const SizedBox(height: 20),

          //         TextButton(

          //           style: TextButton.styleFrom(

          //             primary: kPrimaryColor.withOpacity(0.2),

          //           ), child: Text('Change Mpin'),
        ],
      )),
    );
    // }
    // );
  }
}
// ChangeMpin({required BuildContext context}) async {

//     final localMpin = await MpinManager.getMpinValue();

//     print('xxx local mpin $localMpin');

//     // var mpinController;
//     if (mpinController.text == localMpin) {

//       LoginManager.setLogin(true);

//       Navigator.pushAndRemoveUntil(

//           context,

//           MaterialPageRoute(builder: (context) => SetNewMpin()),

//           (route) => false);

//     } else {

//       ErrorDialogBox.errorDialog('', 'Invalid MPIN', context);

//     }

  // }
