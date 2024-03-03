import 'package:final_project/modules/healthcare_app/Location%20Screen/sohag%20locations/sohag_location.dart';
import 'package:final_project/modules/healthcare_app/screens/Doctors/specialty/Dentistry/location/qalyubia/qalyubiaLocation.dart';
import 'package:final_project/modules/healthcare_app/screens/Doctors/specialty/Dentistry/location/sohag/sohagLocation.dart';
import 'package:final_project/modules/healthcare_app/screens/Doctors/specialty/Ear,Nose%20Doctors/location/qalyubia/qalyubiaLocation.dart';
import 'package:flutter/material.dart';

import '../ear&nose_doctors.dart';
import 'cairo/cairoLocation.dart';


class Ear_NoseLocation extends StatelessWidget {
  const Ear_NoseLocation({Key? key}) : super(key: key);

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
        title: const Text('Select City'),
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
                          builder: (context)=> Ear_NoseDoctors(),
                        ),
                      );
                    },
                    child: const Text('All Cities'),
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
                          builder: (context)=> CairoInsider(),
                        ),
                      );
                    },
                    child: const Text('Cairo'),
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
                          builder: (context)=> QalyubiaEarInsider(),
                        ),
                      );
                    },
                    child: const Text('Qalyubia'),
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
                          builder: (context)=>SohagInsider(),
                        ),
                      );
                    },
                    child: const Text('Sohag'),
                  ),
                ),


              ],
            ),
          ),
        ],
      ),
    );
  }
}
