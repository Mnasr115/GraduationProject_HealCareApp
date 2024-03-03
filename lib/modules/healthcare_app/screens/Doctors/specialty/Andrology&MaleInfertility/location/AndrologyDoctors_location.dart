import 'package:final_project/modules/healthcare_app/screens/Doctors/specialty/Andrology&MaleInfertility/location/sohag/sohagLocation.dart';
import 'package:final_project/modules/healthcare_app/screens/Doctors/specialty/Cardiology%20&%20Vascular/location/qalyubia/qalyubiaLocation.dart';
import 'package:final_project/modules/healthcare_app/screens/Doctors/specialty/Cardiology%20&%20Vascular/location/sohag/sohagLocation.dart';
import 'package:flutter/material.dart';
import '../Andrology_doctors.dart';
import 'cairo/cairoLocation.dart';


class AndrologyLocation extends StatelessWidget {
  const AndrologyLocation({Key? key}) : super(key: key);

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
                          builder: (context)=> Andrology__Doctors(),
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
                          builder: (context)=> CairoAndrologyInsider(),
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
                          builder: (context)=> QalyubiaCardiologyInsider(),
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
                          builder: (context)=>SohagAndrologyInsider(),
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
