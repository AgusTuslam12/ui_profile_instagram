import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hexcolor/hexcolor.dart';

double defaultmargin = 16.0;

Color textColor = HexColor("#000000");
Color textHastag = HexColor("#004C8B");

TextStyle styleDefault = GoogleFonts.poppins(
  color: textColor,
  fontSize: 13,
  fontWeight: reguler,
);
TextStyle styleUser = GoogleFonts.poppins(
  color: textColor,
  fontSize: 13,
  fontWeight: bold,
);
TextStyle styleValue = GoogleFonts.poppins(
  color: textColor,
  fontSize: 16,
  fontWeight: bold,
);

TextStyle styleHastag = GoogleFonts.poppins(
  color: textHastag,
  fontSize: 13,
  fontWeight: reguler,
);
TextStyle styleStory = GoogleFonts.poppins(
  color: textColor,
  fontSize: 11,
  fontWeight: reguler,
);

FontWeight bold = FontWeight.bold;
FontWeight reguler = FontWeight.w400;
