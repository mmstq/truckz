import 'controller/sign_up_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:truck_booking/core/app_export.dart';
import 'package:truck_booking/widgets/custom_button.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class SignUpPageScreen extends GetWidget<SignUpPageController> {

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
                      onPressed: () {},
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                            color: Colors.grey.shade200, width: 2)),
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
                          "Sign up with your Name & Phone number to continue",
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMontserratMedium16
                              .copyWith(letterSpacing: 0.64))),
                  Container(
                    margin: EdgeInsets.fromLTRB(26, 26, 26, 0),
                    padding: EdgeInsets.fromLTRB(26, 5, 26, 0),
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                            color: Colors.grey.shade200, width: 2)),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Enter your name",
                          hintStyle:
                          AppStyle.txtMontserratSemiBold16Gray900a2,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(26),
                    padding: EdgeInsets.only(left: 10),
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                            color: Colors.grey.shade200, width: 2)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/images/img_image41.png"), fit: BoxFit.cover,),
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                    color: Colors.grey.shade200,
                                    width: 2))),
                        SizedBox(
                          child: Text("  +91  ",style: AppStyle
                              .txtMontserratSemiBold16Gray900a2,),
                        ),
                        Container(
                          color: Colors.grey.shade200,
                          width: 3,
                          height: 30,
                        ),
                        SizedBox(width: 10,),
                        SizedBox(
                          width: 160,
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Enter your number",
                                hintStyle: AppStyle
                                    .txtMontserratSemiBold16Gray900a2,
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none),
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomButton(
                    onTap: (){
                      Navigator.pushNamed(context, '/sign_up_page_one_screen');
                    },
                      width: 327,
                      text: "CONTINUE",
                      margin: getMargin(left: 24, top: size.height * 0.02, right: 24),
                      alignment: Alignment.center),
                  CustomButton(

                    onTap: (){
                      var a =  AppRoutes.page.where((element) => element['name']=='/sign_up_page_one_screen');

                      print(a.last['page']);


                    },
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
