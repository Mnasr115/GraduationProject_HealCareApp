import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../../../../shared/component/components.dart';

class DiabetesFunctionDetails extends StatelessWidget {
  const DiabetesFunctionDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
        child: Container(
          padding: const EdgeInsets.only(top: 20,left: 20,right: 20,bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [ BoxShadow(
                      color: Color(0x1400f001),
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
                            image: AssetImage('assets/images/Diabetes _Check.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text('Diabetes Screening Package',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.black),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              const Text(
                'Overview',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                ),
              ),

              const SizedBox(
                height: 11,
              ),

              Text(
                'A blood glucose test if you have symptoms'
                    'of high glucose levels (hyperglycemia) or low'
                    'glucose levels (hypoglycemia).',
                style: Theme.of(context).textTheme.bodyText2!.copyWith(color: Colors.black),
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
              ),

              const SizedBox(
                height: 20,
              ),

              const Text(
                'Tests Included',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),

              const SizedBox(
                height: 6,
              ),

              ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Container(
                  height: 30,
                  width: double.infinity,
                  color: HexColor('#EDFDFA'),
                  child: TextButton(
                    onPressed: (){},
                    child: const Text(
                      'Glucose in Plasma (2Hrs Postprandial)',style: TextStyle(
                      color: Colors.black,
                    ),
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 6,
              ),

              ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Container(
                  height: 30,
                  width: double.infinity,
                  color: HexColor('#EDFDFA'),
                  child: TextButton(
                    onPressed: (){},
                    child: const Text(
                      'Glucose in Plasma (Fasting)',style: TextStyle(
                      color: Colors.black,
                    ),
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 6,
              ),

              ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Container(
                  height: 30,
                  width: double.infinity,
                  color: HexColor('#EDFDFA'),
                  child: TextButton(
                    onPressed: (){},
                    child: const Text(
                      'Glycated Haemoglobin (HbAlc)',style: TextStyle(
                      color: Colors.black,
                    ),
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 6,
              ),

              const Text(
                'Available at',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                margin: const EdgeInsets.only(top: 20,bottom: 10),
                height: size.height*0.3,
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  children: [
                    GestureDetector(
                      child: Container(
                        height: 120,
                        width: 120,
                        padding: const EdgeInsets.only(top:14),
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          color: HexColor('#EDFDFA'),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child:Container(
                          margin: const EdgeInsets.only(bottom: 7),
                          height: 40,
                          width: 50,
                          child: const Image(image: AssetImage(
                            'assets/images/mv2.png',
                          )),
                        ),
                      ),
                    ),

                    GestureDetector(
                      child: Container(
                        height: 120,
                        width: 120,
                        padding: const EdgeInsets.only(top:14),
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          color: HexColor('#EDFDFA'),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child:Container(
                          margin: const EdgeInsets.only(bottom: 7),
                          height: 40,
                          width: 50,
                          child: const Image(image: AssetImage(
                            'assets/images/mv2.png',
                          )),
                        ),
                      ),
                    ),

                    GestureDetector(
                      child: Container(
                        height: 120,
                        width: 120,
                        padding: const EdgeInsets.only(top:14),
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          color: HexColor('#EDFDFA'),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child:Container(
                          margin: const EdgeInsets.only(bottom: 7),
                          height: 40,
                          width: 50,
                          child: const Image(image: AssetImage(
                            'assets/images/mv2.png',
                          )),
                        ),
                      ),
                    ),

                    GestureDetector(
                      child: Container(
                        height: 120,
                        width: 120,
                        padding: const EdgeInsets.only(top:14),
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          color: HexColor('#EDFDFA'),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child:Container(
                          margin: const EdgeInsets.only(bottom: 7),
                          height: 40,
                          width: 50,
                          child: const Image(image: AssetImage(
                            'assets/images/mv2.png',
                          )),
                        ),
                      ),
                    ),

                  ],
                ),
              ),

              const SizedBox(
                height: 6,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(' Starting Price ',style: Theme.of(context).textTheme.bodySmall,),
                  const Text('180 EGP',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),),
                ],
              ),

              const SizedBox(
                height: 6,
              ),

              Container(
                margin: const EdgeInsets.only(left: 20,right: 20),
                child: Defaultbotton(
                  text: 'Order this Package',
                  onPress: (){
                  },
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}