import 'package:final_project/modules/healthcare_app/Location%20Screen/Qalyubia%20locations/qalyoub.dart';
import 'package:final_project/modules/healthcare_app/Location%20Screen/Qalyubia%20locations/shibin%20al%20qanater.dart';
import 'package:flutter/material.dart';

import 'banha.dart';



class InsideQalyubiaLocation extends StatelessWidget {
  const InsideQalyubiaLocation({Key? key}) : super(key: key);

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
                          builder: (context)=> BanhaLocation(),
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
                          builder: (context)=> QalyoubLocation(),
                        ),
                      );
                    },
                    child: const Text('Qalyoub'),
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
                          builder: (context)=> ShibinAlQanaterLocation(),
                        ),
                      );
                    },
                    child: const Text('Shibin Al Qanater'),
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
