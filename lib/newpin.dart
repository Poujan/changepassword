import 'package:changepassword/pinchanged.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:pin_code_fields/pin_code_fields.dart';

class SetNewMpin extends StatelessWidget {
  final bool isFirsttimeUser;

  const SetNewMpin({Key? key, this.isFirsttimeUser = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text(
          'Confirm PIN',
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
              text: 'Confirm your current PIN',
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
          // Padding(

          //           padding: const EdgeInsets.only(left: 12.0, right: 12.0),

          //           child: MytoneButton(

          //               onTap: () => vm.validateMpin(

          //                   context: context),

          //               title: 'Confirm'),

          //         ),
        ],
      )),
    );
  }
}

// validateMpin(

//       {required BuildContext context}) async {

//     

//     print(mpinController.text);

//     if (mpinController.text.length == 4) {

//       

//         await LoginManager.setLogin(true);

//         await MpinManager.setHasMpin(true);

//         await MpinManager.setMpinValue(mpinController.text);

//         checkLocalAuth(context);
//  Navigator.pushAndRemoveUntil(

//           context,

//           MaterialPageRoute(builder: (context) => PinChanged()),

//           (route) => false);

//       } else {

//         ErrorDialogBox.errorDialog(

//           '',

//           'Please try again!',

//           context,

//         );

//       }

//     } else {

//       ErrorDialogBox.errorDialog(

//         '',

//         'Enter a valid MPIN',

//         context,

//       );

//     }

//   }
