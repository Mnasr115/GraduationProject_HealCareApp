import 'package:final_project/modules/healthcare_app/Location%20Screen/cairo%20locations/shoubra.dart';
import 'package:final_project/modules/healthcare_app/screens/Doctors/specialty/Ear,Nose%20Doctors/qalyubia/Qalyub/Qalyub.dart';
import 'package:flutter/material.dart';

import '../../../../../../Location Screen/cairo locations/new_cairo.dart';
import '../../cairo/nasr city/nasr_city.dart';
import '../../qalyubia/banha/banha.dart';
import '../../qalyubia/elqanatr/Elqanatr.dart';



class QalyubiaEarInsider extends StatelessWidget {
  const QalyubiaEarInsider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      body: Column(
        children: [

          Container(
            margin: const EdgeInsets.only(top: 10, left: 10, right:  10,bottom: 10),
            // height: MediaQuery.of(context).size.height*0.2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Container(
                  //width: 110,
                  margin: const EdgeInsets.only(top: 10,bottom: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    //color: Colors.blue,
                  ),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context)=> BanhaEar_Nose(),
                        ),
                      );
                    },
                    child: const Text('Banha'),
                  ),
                ),

                const Divider(thickness: 1,),

                Container(
                  //width: 110,
                  margin: const EdgeInsets.only(top: 10,bottom: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    //color: Colors.blue,
                  ),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context)=> ElqanatrEar_Nose(),
                        ),
                      );
                    },
                    child: const Text('Shebin El Qanater'),
                  ),
                ),

                const Divider(thickness: 1,),

                Container(
                  //width: 110,
                  margin: const EdgeInsets.only(top: 10,bottom: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    //color: Colors.blue,
                  ),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context)=> QalyubEar_Nose(),
                        ),
                      );
                    },
                    child: const Text('Qalyub'),
                  ),
                ),

                const Divider(thickness: 1,),



              ],
            ),
          ),
        ],
      ),
    );
  }
}
