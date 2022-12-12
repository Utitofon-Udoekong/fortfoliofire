import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kPrimaryColor = Color(0xFF03426d);
const kSecondaryColor = Color(0xFF2a4c63);
const klightblue = Color(0xFF00ADEF);
// const kSecondaryColor = Color(0xFF656565);
const kDarkGreyColor = Color(0xFF4d4d4d);
const kWhiteColor = Color(0xFFFFFFFF);
const kgreyColor = Color(0xFF292828);
const kBlackColor = Color.fromARGB(255, 22, 22, 22);
const kTextFieldColor = Color(0xFF474747);
const kGreenColor = Color(0XFF00C566);
const kRedColor = Color(0xFFDF1414);

const kDefaultPadding = EdgeInsets.symmetric(horizontal: 20);

var titleText = GoogleFonts.openSans(
    fontSize: 32, fontWeight: FontWeight.w500, color: kBlackColor);
var subTitle = GoogleFonts.openSans(
    fontSize: 18, fontWeight: FontWeight.w300, color: kBlackColor);
var textButton = GoogleFonts.montserrat(
    fontSize: 15, fontWeight: FontWeight.w300, color: kPrimaryColor);
var hintTextStyle =
    GoogleFonts.montserrat(fontSize: 12, color: kgreyColor.withOpacity(0.4));
