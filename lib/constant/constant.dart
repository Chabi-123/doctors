import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

myStyle(
double fs, [Color ?Clr, FontWeight ?fw ]){
  return GoogleFonts.nunito(
    fontSize: fs,
    color: Clr,
    fontWeight: fw,
  );
}
Color primaryColor= Colors.blue;
Color secondaryColor= Colors.green;
Color thirdColor= Colors.white;

String patientDetail= 'Dorji Tsewang was born and raised in a small village in Bhutan, where he developed a deep love for the mountains and traditional Bhutanese culture. He pursued his education with a focus on literature and history, eventually becoming a respected high school teacher in Thimphu, the capital city of Bhutan. Dorji is known for his gentle demeanor and passion for teaching, often incorporating local folklore and spiritual teachings into his lessons.';
String patientDetail1= 'Recently, Dorji Tsewang has been managing chronic back pain due to an old injury from his days as an avid trekker in the Himalayas. Despite his pain, he maintains a disciplined yoga practice and enjoys long walks in the serene landscapes surrounding Thimphu. Dorji follows a balanced diet rich in Bhutanese staples like red rice, vegetables, and dairy products, which he believes contribute to his overall well-being.';