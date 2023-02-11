import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import 'package:flutter/material.dart';
import 'package:truck_booking/core/app_export.dart';
import 'package:truck_booking/widgets/custom_button.dart';

class SignUpPageOneScreen extends StatefulWidget {
  @override
  State<SignUpPageOneScreen> createState() => _SignUpPageOneScreenState();
}

class _SignUpPageOneScreenState extends State<SignUpPageOneScreen> {
  Color _color = Colors.grey.shade200;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(26),
                    height: 50,
                    width: 50,
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        size: 20,
                      ),
                      onPressed: onTapBtntf,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        border:
                            Border.all(color: Colors.grey.shade200, width: 2)),
                  ),
                  Container(
                      width: getHorizontalSize(260.00),
                      margin: getMargin(left: 24, top: 24, right: 24),
                      child: Text("Sign up with your phone number",
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMontserratBold28)),
                  Container(
                      width: getHorizontalSize(291.00),
                      margin: getMargin(left: 24, top: 25, right: 24),
                      child: Text(
                          "Enter the 5-digit code sent to +91xxxxxxxxxx to continue.",
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMontserratMedium16
                              .copyWith(letterSpacing: 0.64))),
                  Container(
                    margin: getMargin(left: 24, top: 25, right: 24),
                    child: OtpTextField(
                      textStyle: AppStyle.txtMontserratSemiBold16Gray900a2,
                      numberOfFields: 5,
                      borderColor: _color,
                      enabledBorderColor: _color,
                      //set to true to show as box or false to show as dash
                      showFieldAsBox: true,
                      //runs when a code is typed in
                      onCodeChanged: (String code) {
                        //handle validation or checks here
                      },
                      //runs when every textfield is filled
                      onSubmit: (String verificationCode) {
                        print(verificationCode);
                        setState(() {
                          _color = Colors.lightGreenAccent.shade700;
                        });
                      }, // end onSubmit
                    ),
                  ),
                  Container(
                      padding: getPadding(left: 24, top: 15, right: 24),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                                padding: getPadding(bottom: 1),
                                child: Text("msg_resend_otp_in_60".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtMontserratSemiBold14
                                        .copyWith(letterSpacing: 1.12))),
                            Padding(
                                padding: getPadding(top: 1),
                                child: TextButton(
                                  onPressed: (){},
                                  child: Text("lbl_resend".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtMontserratSemiBold14DeeppurpleA200
                                          .copyWith(letterSpacing: 1.12)),
                                ))
                          ])),
                  CustomButton(
                      width: 327,
                      text: "SIGN IN",
                      onTap: (){
                        Navigator.pushNamed(context, '/home_page_screen');
                      },
                      margin: getMargin(left: 24, top: size.height * 0.05, right: 24),
                      alignment: Alignment.center),
                  CustomButton(
                      width: 327,
                      text: "CREATE NEW ACCOUNT",
                      margin: getMargin(left: 24, top: 16, right: 24),
                      variant: ButtonVariant.OutlineAmberA4007e,
                      fontStyle: ButtonFontStyle.MontserratBold14AmberA400,
                      alignment: Alignment.center),
                  Spacer(),
                  Container(
                      height: getVerticalSize(2.00),
                      width: size.width,
                      margin: getMargin(top: size.height * 0.03),
                      decoration:
                      BoxDecoration(color: Colors.grey.shade200)),
                  Padding(
                      padding: getPadding(left: 32, top: 22, right: 32),
                      child: Text("INFORMATION:",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMontserratBold14
                              .copyWith(letterSpacing: 0.56))),
                  Container(
                      margin: getMargin(
                          left: 32, top: 14, right: 32, bottom: 22),
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "By creating your account on G7 Truckers you agree to our ",
                                style: TextStyle(
                                    color: ColorConstant.gray90099,
                                    fontSize: getFontSize(14),
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.56)),

                            TextSpan(
                                text: "Terms of Uses, Conditions & Privacy Policies.",
                                style: TextStyle(
                                    color: ColorConstant.deepPurpleA200,
                                    fontSize: getFontSize(14),
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.56))
                          ]),
                          textAlign: TextAlign.left))
                ])));
  }

  onTapBtntf() {
    Get.back();
  }
}
