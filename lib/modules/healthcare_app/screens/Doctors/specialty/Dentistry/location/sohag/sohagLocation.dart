import 'package:final_project/modules/healthcare_app/Location%20Screen/cairo%20locations/shoubra.dart';
import 'package:flutter/material.dart';

import '../../../../../../Location Screen/cairo locations/new_cairo.dart';
import '../../cairo/nasr city/nasr_city.dart';
import '../../sohag/sohag_city.dart';



class SohagInsider extends StatelessWidget {
  const SohagInsider({Key? key}) : super(key: key);

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
                          builder: (context)=> SohagDentistry(),
                        ),
                      );
                    },
                    child: const Text('Sohag City'),
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
