import 'package:final_project/modules/healthcare_app/Location%20Screen/location.dart';
import 'package:final_project/modules/healthcare_app/screens/Doctors/specialty/Cardiology%20&%20Vascular/Cardiology_doctors.dart';
import 'package:final_project/modules/healthcare_app/screens/Doctors/specialty/Nephrology/Nephrology_doctors.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../../../../models/doctors/specialty/specialty.dart';
import '../../../../../my_flutter_icon_icons.dart';
import 'Andrology&MaleInfertility/Andrology_doctors.dart';
import 'Dentistry/dentistry_doctors.dart';
import 'Dermatology/Dermatology_doctors.dart';
import 'Ear,Nose Doctors/ear&nose_doctors.dart';
import 'Rheumatology/Rheumatology_doctors.dart';


class SpecialtyScreen extends StatefulWidget {
  const SpecialtyScreen({Key? key}) : super(key: key);

  @override
  State<SpecialtyScreen> createState() => _SpecialtyScreenState();
}

class _SpecialtyScreenState extends State<SpecialtyScreen> {


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 25, left: 20, right:  20,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(
                'Common Specialty',
                style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.indigo),
              ),
              const SizedBox(
                height: 20,
              ),

              ListView(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                children: [

                  Container(
                    padding: const EdgeInsets.only(top:10,bottom: 10),
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      color: HexColor('#EDFDFA'),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child:  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ListTile(
                          leading: const Icon(
                            MyFlutterIcon.tooth,
                            //size: 24,
                            color: Colors.indigoAccent,
                          ),
                          title: Text(
                            'Dentistry',
                            style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.black),
                          ),
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const DentistryDoctors(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  const Divider(thickness: 1,),

                  Container(
                    padding: const EdgeInsets.only(top:10,bottom: 10),
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      color: HexColor('#EDFDFA'),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child:  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ListTile(
                          leading: const Icon(
                            MyFlutterIcon.nose,
                            //size: 24,
                            color: Colors.indigoAccent,
                          ),
                          title: Text(
                            'Ear, Nose and Throat',
                            style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.black),
                          ),
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Ear_NoseDoctors(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  const Divider(thickness: 1,),

                  Container(
                    padding: const EdgeInsets.only(top:10,bottom: 10),
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      color: HexColor('#EDFDFA'),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child:  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ListTile(
                          leading: const Icon(
                            MyFlutterIcon.dermatology,
                            //size: 24,
                            color: Colors.indigoAccent,
                          ),
                          title: Text(
                            'Dermatology',
                            style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.black),
                          ),
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>  DermatologyDoctors(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  const Divider(thickness: 1,),

                  Container(
                    padding: const EdgeInsets.only(top:10,bottom: 10),
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      color: HexColor('#EDFDFA'),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child:  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ListTile(
                          leading: const Icon(
                            MyFlutterIcon.rheumatology,
                            //size: 24,
                            color: Colors.indigoAccent,
                          ),
                          title: Text(
                            'Rheumatology',
                            style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.black),
                          ),
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const RheumatologyDoctors(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  const Divider(thickness: 1,),

                  Container(
                    padding: const EdgeInsets.only(top:10,bottom: 10),
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      color: HexColor('#EDFDFA'),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child:  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ListTile(
                          leading: const Icon(
                            MyFlutterIcon.nephrology_1,
                            //size: 24,
                            color: Colors.indigoAccent,
                          ),
                          title: Text(
                            'Nephrology',
                            style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.black),
                          ),
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const NephrologyDoctors(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  const Divider(thickness: 1,),

                  Container(
                    padding: const EdgeInsets.only(top:10,bottom: 10),
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      color: HexColor('#EDFDFA'),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child:  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ListTile(
                          leading: const Icon(
                            MyFlutterIcon.Cardiology_and_Vascular_Disease,
                            //size: 24,
                            color: Colors.indigoAccent,
                          ),
                          title: Text(
                            'Cardiology and Vascular Disease',
                            style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.black),
                          ),
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const CardiologyDoctors(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  const Divider(thickness: 1,),

                  Container(
                    padding: const EdgeInsets.only(top:10,bottom: 10),
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      color: HexColor('#EDFDFA'),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child:  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ListTile(
                          leading: const Icon(
                            MyFlutterIcon.male,
                            //size: 24,
                            color: Colors.indigoAccent,
                          ),
                          title: Text(
                            'Andrology and Male Infertility',
                            style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.black),
                          ),
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Andrology__Doctors(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  const Divider(thickness: 1,),


                ],
              ),



            ],
          ),
        ),
      ),
    );
  }
}
