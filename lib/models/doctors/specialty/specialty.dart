
import 'package:flutter/material.dart';

import '../../../my_flutter_icon_icons.dart';


class Specialty {
  String title;
  IconData icon;

  Specialty({
    this.title = '',
    required this.icon ,
});
}

List<Specialty> specialtyList = [

  Specialty(
    title: 'Dentistry',
    icon: MyFlutterIcon.tooth,
  ),

  Specialty(
      title: 'Ear, Nose and Throat',
    icon: MyFlutterIcon.nose,
  ),

  Specialty(
      title: 'Rheumatology',
    icon: MyFlutterIcon.rheumatology,
  ),

  Specialty(
      title: 'Nephrology',
    icon: MyFlutterIcon.nephrology_1,
  ),

  Specialty(
      title: 'Laboratories',
    icon: MyFlutterIcon.laboratory,
  ),


  Specialty(
      title: 'Audiology',
    icon: MyFlutterIcon.ear,
  ),

  Specialty(
      title: 'Cardiology and Vascular Disease',
    icon: MyFlutterIcon.Cardiology_and_Vascular_Disease,
  ),


  Specialty(
    title: 'Obesity and Laparoscopic Surgery',
    icon: MyFlutterIcon.fitness_body,
  ),

  Specialty(
      title: 'Dermatology',
    icon: MyFlutterIcon.dermatology,
  ),

  Specialty(
      title: 'Cardiology and Thoracic Surgery',
    icon: MyFlutterIcon.cardiology,
  ),

  Specialty(
      title: 'Family Medicine',
    icon: MyFlutterIcon.family,
  ),

  Specialty(
      title: 'Andrology and Male Infertility',
    icon: MyFlutterIcon.male,
  ),


];