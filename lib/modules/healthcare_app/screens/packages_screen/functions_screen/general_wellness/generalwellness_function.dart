import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'generalwellness_fun_detials.dart';

class GeneralWellnessFunction extends StatelessWidget {
  const GeneralWellnessFunction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(top: 20,left: 20,right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: const [ BoxShadow(
                        color: Color(0x1400f000),
                        offset: Offset(0, 10),
                        blurRadius: 15,
                        spreadRadius: 0,
                      ) ]
                  ),
                  height: 80,
                  width: size.width,
                  child:  Expanded(
                    flex: 5,
                    child:  Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 10,right: 10),
                          height: 80,
                          width: 80,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/General Wellness.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text('General Wellness',
                          style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.black),
                        ),
                      ],
                    ),
                  ),

                ),

                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Packages Available',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),

                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: MaterialButton(
                    color: HexColor('#EDFDFA'),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context)=> const GeneralWellnessFunctionDetails(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('General Check Up',style: Theme.of(context).textTheme.bodyMedium,),
                          const SizedBox(
                            height: 9,
                          ),
                          Row(
                            children: [
                              Text('11 Test(s) Included - Starting Price ',style: Theme.of(context).textTheme.bodySmall,),
                              const Text('800 EGP',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              ),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),


      ),
    );
  }
}
