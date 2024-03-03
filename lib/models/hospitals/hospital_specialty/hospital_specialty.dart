
import 'package:flutter/material.dart';

import '../../../my_flutter_icon_icons.dart';


class HospitalSpecialty {
  String title;
  IconData icon;

  HospitalSpecialty({
    this.title = '',
    required this.icon ,
  });
}

List<HospitalSpecialty> hospitalSpecialtyList = [

  HospitalSpecialty(
    title: 'Anesthesia',
    icon: MyFlutterIcon.tooth,
  ),

  HospitalSpecialty(
    title: 'Cardiothoracic surgery',
    icon: MyFlutterIcon.nose,
  ),

  HospitalSpecialty(
    title: 'Liver Transplant',
    icon: MyFlutterIcon.rheumatology,
  ),

  HospitalSpecialty(
    title: 'Orthopaedic Surgery',
    icon: MyFlutterIcon.nephrology_1,
  ),

  HospitalSpecialty(
    title: 'Hair Planet',
    icon: MyFlutterIcon.nephrology_1,
  ),







];