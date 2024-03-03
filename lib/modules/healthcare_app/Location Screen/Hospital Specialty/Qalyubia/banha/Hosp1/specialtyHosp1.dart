import 'package:final_project/modules/healthcare_app/Location%20Screen/Hospital%20Specialty/Qalyubia/banha/Hosp1/spec1/spec1_screen.dart';
import 'package:final_project/modules/healthcare_app/Location%20Screen/Hospital%20Specialty/Qalyubia/banha/Hosp1/spec2/spec2_screen.dart';
import 'package:final_project/modules/healthcare_app/Location%20Screen/Hospital%20Specialty/Qalyubia/banha/Hosp1/spec3/spec3_screen.dart';
import 'package:final_project/modules/healthcare_app/Location%20Screen/Hospital%20Specialty/cairo/nasr_city/Hosp1/spec1/spec1_screen.dart';
import 'package:final_project/modules/healthcare_app/Location%20Screen/Hospital%20Specialty/cairo/nasr_city/Hosp1/spec2/spec2_screen.dart';
import 'package:final_project/modules/healthcare_app/Location%20Screen/Hospital%20Specialty/cairo/nasr_city/Hosp1/spec3/spec3_screen.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../../../../../my_flutter_icon_icons.dart';

class BanhaSpecialtyHosp1 extends StatelessWidget {
  const BanhaSpecialtyHosp1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Specialty'),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 10, left: 10, right:  10,bottom: 10),
        child: Column(
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
                      'Hair Planet',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.black),
                    ),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BanhaSpec1Screen(),
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
                      MyFlutterIcon.tooth,
                      //size: 24,
                      color: Colors.indigoAccent,
                    ),
                    title: Text(
                      'Liver Transplant Surgery',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.black),
                    ),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BanhaSpec2Screen(),
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
                      MyFlutterIcon.tooth,
                      //size: 24,
                      color: Colors.indigoAccent,
                    ),
                    title: Text(
                      'Heart Surgery',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.black),
                    ),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BanhaSpec3Screen(),
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
      ),
    );
  }
}
