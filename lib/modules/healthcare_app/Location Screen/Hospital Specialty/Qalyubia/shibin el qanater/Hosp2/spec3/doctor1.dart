
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../../../../../../shared/component/components.dart';


class ShibinDoctor3Hosp2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: HexColor('#EDFDFA'),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: (){
            },
            icon: const Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: HexColor('#EDFDFA'),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Container(
                margin: const EdgeInsets.only(left: 10, bottom: 30),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      child: Image.asset('assets/images/Doctor-PNG-Clipart.png'),
                    ),

                    Container(
                      margin: const EdgeInsets.only(left: 20,),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 20,),
                            child: const Text(
                              'Dr.Mahmoud',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w700
                              ),
                              maxLines: 2,
                            ),
                          ),

                          Container(
                            margin: const EdgeInsets.only(top: 10,),
                            child: const Text(
                              'Heart Surgery Doctor',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w300,
                                fontSize: 15,
                              ),
                            ),
                          ),

                          Container(
                            margin: const EdgeInsets.only(top: 15,),
                            child: Text(
                              'Rating : 4',
                              style: TextStyle(
                                  color: Colors.yellow[700],
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ],
                      ),

                    ),

                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            IntrinsicHeight(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Row(
                      children: [
                        const Icon(
                          Icons.attach_money,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          '130 EGP '
                              'Consolation fees',
                          style: Theme.of(context).textTheme.bodyText2,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    const Divider(
                      thickness: 0.3,
                      //color: Colors.blue[200],
                    ),
                    Row(
                      children:  [
                        const Icon(
                            Icons.timelapse
                        ),
                        const SizedBox(width: 8,),
                        Text(
                          'Waiting Time : 30 Minutes',
                          style: Theme.of(context).textTheme.bodyText2,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),

                    const SizedBox(height: 4,),
                    const Divider(
                      thickness: 0.3,
                      //color: Colors.blue[200],
                    ),
                    const SizedBox(height: 4,),
                    Row(
                      children:  [
                        const Icon(
                            Icons.location_on_outlined
                        ),
                        const SizedBox(width: 8,),
                        Text(
                          'Shibin El Qanater',
                          style: Theme.of(context).textTheme.bodyText2,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                    const SizedBox(height: 4,),
                    const Divider(
                      thickness: 0.3,
                      //color: Colors.blue[200],
                    ),

                  ],
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.only(left: 20, top: 30),
              child: const Text('March 2022',
                style: TextStyle(
                  color: Color(0xff363636),
                  fontSize: 25,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
              height: 90,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  demoDates("Mon", "21", true),
                  demoDates("Tue", "22", false),
                  demoDates("Wed", "23", false),
                  demoDates("Thur", "24", false),
                  demoDates("Fri", "25", false),
                  demoDates("Sat", "26", false),
                  demoDates("Sun", "27", false),
                  demoDates("Mon", "28", false),
                ],
              ),
            ),

            Container(
              margin: const EdgeInsets.only(left: 20, top: 30),
              child: const Text('Morning',
                style: TextStyle(
                  color: Color(0xff363636),
                  fontSize: 25,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.only(right: 20),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                physics: NeverScrollableScrollPhysics(),
                childAspectRatio: 2.7,
                children: [
                  doctorTimingsData("08:30 AM", true),
                  doctorTimingsData("08:30 AM", false),
                  doctorTimingsData("08:30 AM", false),
                  doctorTimingsData("08:30 AM", false),
                  doctorTimingsData("08:30 AM", false),
                  doctorTimingsData("08:30 AM", false),
                ],
              ),
            ),

            Container(
              margin: const EdgeInsets.only(left: 25, top: 30),
              child: Text('Evening',
                style: TextStyle(
                  color: Color(0xff363636),
                  fontSize: 25,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(right: 20),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                physics: NeverScrollableScrollPhysics(),
                childAspectRatio: 2.6,
                children: [
                  doctorTimingsData("08:30 AM", true),
                  doctorTimingsData("08:30 AM", false),
                  doctorTimingsData("08:30 AM", false),
                  doctorTimingsData("08:30 AM", false),
                  doctorTimingsData("08:30 AM", false),
                  doctorTimingsData("08:30 AM", false),
                ],
              ),
            ),

            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 54,
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xff107163),
                borderRadius: BorderRadius.circular(5),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x17000000),
                    offset: Offset(0, 15),
                    blurRadius: 15,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: const Text(
                'Make An Appointment',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


}
