import 'package:final_project/modules/healthcare_app/screens/Doctors/specialty/Andrology&MaleInfertility/qalyubia/Qalyub/doctor1.dart';
import 'package:final_project/modules/healthcare_app/screens/Doctors/specialty/Andrology&MaleInfertility/qalyubia/Qalyub/doctor2.dart';
import 'package:final_project/modules/healthcare_app/screens/Doctors/specialty/Andrology&MaleInfertility/qalyubia/banha/doctor1.dart';
import 'package:final_project/modules/healthcare_app/screens/Doctors/specialty/Andrology&MaleInfertility/qalyubia/banha/doctor2.dart';
import 'package:final_project/modules/healthcare_app/screens/Doctors/specialty/Andrology&MaleInfertility/qalyubia/banha/doctor3.dart';
import 'package:final_project/modules/healthcare_app/screens/Doctors/specialty/Andrology&MaleInfertility/qalyubia/elqanatr/doctor1.dart';
import 'package:final_project/modules/healthcare_app/screens/Doctors/specialty/Andrology&MaleInfertility/qalyubia/elqanatr/doctor2.dart';
import 'package:final_project/modules/healthcare_app/screens/Doctors/specialty/Andrology&MaleInfertility/sohag/doctor1.dart';
import 'package:final_project/modules/healthcare_app/screens/Doctors/specialty/Andrology&MaleInfertility/sohag/doctor2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hexcolor/hexcolor.dart';

import 'cairo/nasr city/doctor1.dart';
import 'cairo/nasr city/doctor2.dart';
import 'cairo/nasr city/doctor3.dart';
import 'cairo/new cairo/doctor1.dart';
import 'cairo/new cairo/doctor2.dart';
import 'cairo/new cairo/doctor3.dart';
import 'cairo/shoubra/doctor1.dart';
import 'cairo/shoubra/doctor2.dart';
import 'location/AndrologyDoctors_location.dart';



class Andrology__Doctors extends StatefulWidget {
  const Andrology__Doctors({Key? key}) : super(key: key);

  @override
  State<Andrology__Doctors> createState() => _Andrology__DoctorsState();
}

class _Andrology__DoctorsState extends State<Andrology__Doctors> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  bool isBottomSheetShow = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),

        title:  Padding(
          padding: const EdgeInsets.only(left: 47,right: 47),
          child: Container(
            height: 40,
            width: 120,
            margin: const EdgeInsets.only(top: 10,bottom: 10),
            decoration: BoxDecoration(
              //color: HexColor('#EDFDFA'),
              color: Colors.white70,
              borderRadius: BorderRadius.circular(16),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.zero,
              child: TextButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=> AndrologyLocation(),
                    ),
                  );
                },
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.location_on_outlined,
                          ),
                          Text(
                              'Location'
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),


      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 25, left: 20, right:  20),
          child: Column(
            children: [

              ListView(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                children: [

                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AndrologyDoctor1(),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.only(top:14),
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color: HexColor('#EDFDFA'),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ListTile(
                                      leading: Image.asset('assets/images/Doctor-PNG-Clipart.png',
                                        //fit: BoxFit.cover,
                                      ),
                                      title: const Text('Dr.Mahmoud'),
                                      subtitle: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            "is one of the-best, doctors in the Cairo Hospital."
                                                "He has saved more than 1600 patients tn the past years,"
                                                " He has also received many awards from EUA "
                                                "and abroad as the best doctors. "
                                                "He is available on a private or schedule.",
                                            style: Theme.of(context).textTheme.bodyText2,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          RatingBar.builder(
                                            itemSize: 16,
                                            initialRating: double.parse('4.5'),
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            itemCount: 5,
                                            itemPadding: EdgeInsets.zero,
                                            itemBuilder: (context, _ ) =>
                                            const Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                            ),
                                            onRatingUpdate: (rating){
                                              debugPrint(rating.toString());
                                            },
                                            unratedColor: Colors.grey[400],
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            'From 1500 Patients',
                                            style: Theme.of(context).textTheme.bodyText2,
                                          ),

                                        ],
                                      ),

                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children:  [
                                        const Icon(
                                          Icons.description,
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Andrology & Male Infertility Doctor',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children:  [
                                        const Icon(
                                            Icons.location_on_outlined
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Nasr City',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children:  [
                                        const Icon(
                                            Icons.money
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Fees : 150 EGP',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children:  [
                                        const Icon(
                                            Icons.timelapse
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Waiting Time : 24 Minutes',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          height: 35,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(16),
                                            color: Colors.grey[400],
                                          ),
                                          child: Center(
                                            child: Text('First available on Saturday 26/3',
                                              style: Theme.of(context).textTheme.bodyText2,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 16,
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(16),
                                        child: MaterialButton(
                                          height: 32,
                                          onPressed: (){
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => AndrologyDoctor1(),
                                              ),
                                            );
                                          },
                                          color: Colors.red,
                                          child: const Text(
                                            'Book',
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Divider(thickness: 1,),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NewCairoAndrologyDoc1(),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.only(top:14),
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color: HexColor('#EDFDFA'),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ListTile(
                                      leading: Image.asset('assets/images/Doctor-PNG-Clipart.png',
                                        //fit: BoxFit.cover,
                                      ),
                                      title: const Text('Dr.Mahmoud'),
                                      subtitle: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            "is one of the-best, doctors in the Cairo Hospital."
                                                "He has saved more than 1600 patients tn the past years,"
                                                " He has also received many awards from EUA "
                                                "and abroad as the best doctors. "
                                                "He is available on a private or schedule.",
                                            style: Theme.of(context).textTheme.bodyText2,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          RatingBar.builder(
                                            itemSize: 16,
                                            initialRating: double.parse('4.5'),
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            itemCount: 5,
                                            itemPadding: EdgeInsets.zero,
                                            itemBuilder: (context, _ ) =>
                                            const Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                            ),
                                            onRatingUpdate: (rating){
                                              debugPrint(rating.toString());
                                            },
                                            unratedColor: Colors.grey[400],
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            'From 1500 Patients',
                                            style: Theme.of(context).textTheme.bodyText2,
                                          ),

                                        ],
                                      ),

                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children:  [
                                        const Icon(
                                          Icons.description,
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Andrology & Male Infertility Doctor',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children:  [
                                        const Icon(
                                            Icons.location_on_outlined
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'New Cairo',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children:  [
                                        const Icon(
                                            Icons.money
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Fees : 150 EGP',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children:  [
                                        const Icon(
                                            Icons.timelapse
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Waiting Time : 24 Minutes',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          height: 35,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(16),
                                            color: Colors.grey[400],
                                          ),
                                          child: Center(
                                            child: Text('First available on Saturday 26/3',
                                              style: Theme.of(context).textTheme.bodyText2,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 16,
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(16),
                                        child: MaterialButton(
                                          height: 32,
                                          onPressed: (){
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => NewCairoAndrologyDoc1(),
                                              ),
                                            );
                                          },
                                          color: Colors.red,
                                          child: const Text(
                                            'Book',
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Divider(thickness: 1,),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BenhaAndrologyDoc1(),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.only(top:14),
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color: HexColor('#EDFDFA'),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ListTile(
                                      leading: Image.asset('assets/images/Doctor-PNG-Clipart.png',
                                        //fit: BoxFit.cover,
                                      ),
                                      title: const Text('Dr.ahmed abo elez'),
                                      subtitle: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            "is one of the-best, doctors in the Cairo Hospital."
                                                "He has saved more than 1600 patients tn the past years,"
                                                " He has also received many awards from EUA "
                                                "and abroad as the best doctors. "
                                                "He is available on a private or schedule.",
                                            style: Theme.of(context).textTheme.bodyText2,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          RatingBar.builder(
                                            itemSize: 16,
                                            initialRating: double.parse('4.5'),
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            itemCount: 5,
                                            itemPadding: EdgeInsets.zero,
                                            itemBuilder: (context, _ ) =>
                                            const Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                            ),
                                            onRatingUpdate: (rating){
                                              debugPrint(rating.toString());
                                            },
                                            unratedColor: Colors.grey[400],
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            'From 1500 Patients',
                                            style: Theme.of(context).textTheme.bodyText2,
                                          ),

                                        ],
                                      ),

                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children:  [
                                        const Icon(
                                          Icons.description,
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Andrology & Male Infertility Doctor',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children:  [
                                        const Icon(
                                            Icons.location_on_outlined
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'benha',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children:  [
                                        const Icon(
                                            Icons.money
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Fees : 150 EGP',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children:  [
                                        const Icon(
                                            Icons.timelapse
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Waiting Time : 24 Minutes',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          height: 35,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(16),
                                            color: Colors.grey[400],
                                          ),
                                          child: Center(
                                            child: Text('First available on Saturday 26/3',
                                              style: Theme.of(context).textTheme.bodyText2,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 16,
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(16),
                                        child: MaterialButton(
                                          height: 32,
                                          onPressed: (){
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => BenhaAndrologyDoc1(),
                                              ),
                                            );
                                          },
                                          color: Colors.red,
                                          child: const Text(
                                            'Book',
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Divider(thickness: 1,),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AndrologyDoctor2(),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.only(top:14),
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color: HexColor('#EDFDFA'),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ListTile(
                                      leading: Image.asset('assets/images/Doctor-PNG-Clipart.png',
                                        //fit: BoxFit.cover,
                                      ),
                                      title: const Text('Dr.Mohamed'),
                                      subtitle: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            "is one of the-best, doctors in the Cairo Hospital."
                                                "He has saved more than 1600 patients tn the past years,"
                                                " He has also received many awards from EUA "
                                                "and abroad as the best doctors. "
                                                "He is available on a private or schedule.",
                                            style: Theme.of(context).textTheme.bodyText2,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          RatingBar.builder(
                                            itemSize: 16,
                                            initialRating: double.parse('4'),
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            itemCount: 5,
                                            itemPadding: EdgeInsets.zero,
                                            itemBuilder: (context, _ ) =>
                                            const Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                            ),
                                            onRatingUpdate: (rating){
                                              debugPrint(rating.toString());
                                            },
                                            unratedColor: Colors.grey[400],
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            'From 1200 Patients',
                                            style: Theme.of(context).textTheme.bodyText2,
                                          ),

                                        ],
                                      ),

                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children:  [
                                        const Icon(
                                          Icons.description,
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Andrology & Male Infertility Doctor',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children:  [
                                        const Icon(
                                            Icons.location_on_outlined
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Nasr City',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children:  [
                                        const Icon(
                                            Icons.money
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Fees : 150 EGP',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children:  [
                                        const Icon(
                                            Icons.timelapse
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Waiting Time : 24 Minutes',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          height: 35,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(16),
                                            color: Colors.grey[400],
                                          ),
                                          child: Center(
                                            child: Text('First available on Saturday 26/3',
                                              style: Theme.of(context).textTheme.bodyText2,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 16,
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(16),
                                        child: MaterialButton(
                                          height: 32,
                                          onPressed: (){
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => AndrologyDoctor2(),
                                              ),
                                            );
                                          },
                                          color: Colors.red,
                                          child: const Text(
                                            'Book',
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Divider(thickness: 1,),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => QalyubAndrologyDoc2(),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.only(top:14),
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color: HexColor('#EDFDFA'),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ListTile(
                                      leading: Image.asset('assets/images/Doctor-PNG-Clipart.png',
                                        //fit: BoxFit.cover,
                                      ),
                                      title: const Text('Dr.abdelfattah kasem nassar'),
                                      subtitle: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            "is one of the-best, doctors in the Cairo Hospital."
                                                "He has saved more than 1600 patients tn the past years,"
                                                " He has also received many awards from EUA "
                                                "and abroad as the best doctors. "
                                                "He is available on a private or schedule.",
                                            style: Theme.of(context).textTheme.bodyText2,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          RatingBar.builder(
                                            itemSize: 16,
                                            initialRating: double.parse('4'),
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            itemCount: 5,
                                            itemPadding: EdgeInsets.zero,
                                            itemBuilder: (context, _ ) =>
                                            const Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                            ),
                                            onRatingUpdate: (rating){
                                              debugPrint(rating.toString());
                                            },
                                            unratedColor: Colors.grey[400],
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            'From 1200 Patients',
                                            style: Theme.of(context).textTheme.bodyText2,
                                          ),

                                        ],
                                      ),

                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children:  [
                                        const Icon(
                                          Icons.description,
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Andrology & Male Infertility Doctor',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children:  [
                                        const Icon(
                                            Icons.location_on_outlined
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Qalyub',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children:  [
                                        const Icon(
                                            Icons.money
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Fees : 125 EGP',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children:  [
                                        const Icon(
                                            Icons.timelapse
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Waiting Time : 15 Minutes',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          height: 35,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(16),
                                            color: Colors.grey[400],
                                          ),
                                          child: Center(
                                            child: Text('First available on Saturday 26/3',
                                              style: Theme.of(context).textTheme.bodyText2,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 16,
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(16),
                                        child: MaterialButton(
                                          height: 32,
                                          onPressed: (){
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => QalyubAndrologyDoc2(),
                                              ),
                                            );
                                          },
                                          color: Colors.red,
                                          child: const Text(
                                            'Book',
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Divider(thickness: 1,),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => shoubraAndrologyDoc2(),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.only(top:14),
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color: HexColor('#EDFDFA'),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ListTile(
                                      leading: Image.asset('assets/images/Doctor-PNG-Clipart.png',
                                        //fit: BoxFit.cover,
                                      ),
                                      title: const Text('Dr.Mohamed'),
                                      subtitle: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            "is one of the-best, doctors in the Cairo Hospital."
                                                "He has saved more than 1600 patients tn the past years,"
                                                " He has also received many awards from EUA "
                                                "and abroad as the best doctors. "
                                                "He is available on a private or schedule.",
                                            style: Theme.of(context).textTheme.bodyText2,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          RatingBar.builder(
                                            itemSize: 16,
                                            initialRating: double.parse('4'),
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            itemCount: 5,
                                            itemPadding: EdgeInsets.zero,
                                            itemBuilder: (context, _ ) =>
                                            const Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                            ),
                                            onRatingUpdate: (rating){
                                              debugPrint(rating.toString());
                                            },
                                            unratedColor: Colors.grey[400],
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            'From 1200 Patients',
                                            style: Theme.of(context).textTheme.bodyText2,
                                          ),

                                        ],
                                      ),

                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children:  [
                                        const Icon(
                                          Icons.description,
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Andrology & Male Infertility Doctor',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children:  [
                                        const Icon(
                                            Icons.location_on_outlined
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'shoubra',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children:  [
                                        const Icon(
                                            Icons.money
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Fees : 150 EGP',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children:  [
                                        const Icon(
                                            Icons.timelapse
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Waiting Time : 24 Minutes',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          height: 35,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(16),
                                            color: Colors.grey[400],
                                          ),
                                          child: Center(
                                            child: Text('First available on Saturday 26/3',
                                              style: Theme.of(context).textTheme.bodyText2,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 16,
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(16),
                                        child: MaterialButton(
                                          height: 32,
                                          onPressed: (){
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => shoubraAndrologyDoc2(),
                                              ),
                                            );
                                          },
                                          color: Colors.red,
                                          child: const Text(
                                            'Book',
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Divider(thickness: 1,),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SohagAndrologyDoc2(),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.only(top:14),
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color: HexColor('#EDFDFA'),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ListTile(
                                      leading: Image.asset('assets/images/Doctor-PNG-Clipart.png',
                                        //fit: BoxFit.cover,
                                      ),
                                      title: const Text('Dr.Mahmoud Mohamed Mahmoud'),
                                      subtitle: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            "is one of the-best, doctors in the Cairo Hospital."
                                                "He has saved more than 1600 patients tn the past years,"
                                                " He has also received many awards from EUA "
                                                "and abroad as the best doctors. "
                                                "He is available on a private or schedule.",
                                            style: Theme.of(context).textTheme.bodyText2,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          RatingBar.builder(
                                            itemSize: 16,
                                            initialRating: double.parse('4'),
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            itemCount: 5,
                                            itemPadding: EdgeInsets.zero,
                                            itemBuilder: (context, _ ) =>
                                            const Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                            ),
                                            onRatingUpdate: (rating){
                                              debugPrint(rating.toString());
                                            },
                                            unratedColor: Colors.grey[400],
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            'From 1200 Patients',
                                            style: Theme.of(context).textTheme.bodyText2,
                                          ),

                                        ],
                                      ),

                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children:  [
                                        const Icon(
                                          Icons.description,
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Andrology & Male Infertility Doctor',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children:  [
                                        const Icon(
                                            Icons.location_on_outlined
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Sohag',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children:  [
                                        const Icon(
                                            Icons.money
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Fees : 150 EGP',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
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
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          height: 35,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(16),
                                            color: Colors.grey[400],
                                          ),
                                          child: Center(
                                            child: Text('First available on Saturday 26/3',
                                              style: Theme.of(context).textTheme.bodyText2,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 16,
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(16),
                                        child: MaterialButton(
                                          height: 32,
                                          onPressed: (){
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => SohagAndrologyDoc2(),
                                              ),
                                            );
                                          },
                                          color: Colors.red,
                                          child: const Text(
                                            'Book',
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Divider(thickness: 1,),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BenhaAndrologyDoc3(),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.only(top:14),
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color: HexColor('#EDFDFA'),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ListTile(
                                      leading: Image.asset('assets/images/Doctor-PNG-Clipart.png',
                                        //fit: BoxFit.cover,
                                      ),
                                      title: const Text('Dr.moataz elshahat rezq'),
                                      subtitle: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            "is one of the-best, doctors in the Cairo Hospital."
                                                "He has saved more than 1600 patients tn the past years,"
                                                " He has also received many awards from EUA "
                                                "and abroad as the best doctors. "
                                                "He is available on a private or schedule.",
                                            style: Theme.of(context).textTheme.bodyText2,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          RatingBar.builder(
                                            itemSize: 16,
                                            initialRating: double.parse('4'),
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            itemCount: 5,
                                            itemPadding: EdgeInsets.zero,
                                            itemBuilder: (context, _ ) =>
                                            const Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                            ),
                                            onRatingUpdate: (rating){
                                              debugPrint(rating.toString());
                                            },
                                            unratedColor: Colors.grey[400],
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            'From 1200 Patients',
                                            style: Theme.of(context).textTheme.bodyText2,
                                          ),

                                        ],
                                      ),

                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children:  [
                                        const Icon(
                                          Icons.description,
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Andrology & Male Infertility Doctor',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children:  [
                                        const Icon(
                                            Icons.location_on_outlined
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'benha',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children:  [
                                        const Icon(
                                            Icons.money
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Fees : 100 EGP',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children:  [
                                        const Icon(
                                            Icons.timelapse
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Waiting Time : 20 Minutes',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          height: 35,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(16),
                                            color: Colors.grey[400],
                                          ),
                                          child: Center(
                                            child: Text('First available on Saturday 26/3',
                                              style: Theme.of(context).textTheme.bodyText2,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 16,
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(16),
                                        child: MaterialButton(
                                          height: 32,
                                          onPressed: (){
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => BenhaAndrologyDoc3(),
                                              ),
                                            );
                                          },
                                          color: Colors.red,
                                          child: const Text(
                                            'Book',
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Divider(thickness: 1,),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => QanaterAndrologyDoc2(),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.only(top:14),
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color: HexColor('#EDFDFA'),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ListTile(
                                      leading: Image.asset('assets/images/Doctor-PNG-Clipart.png',
                                        //fit: BoxFit.cover,
                                      ),
                                      title: const Text('Dr.ahmed kadeh'),
                                      subtitle: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            "is one of the-best, doctors in the Cairo Hospital."
                                                "He has saved more than 1600 patients tn the past years,"
                                                " He has also received many awards from EUA "
                                                "and abroad as the best doctors. "
                                                "He is available on a private or schedule.",
                                            style: Theme.of(context).textTheme.bodyText2,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          RatingBar.builder(
                                            itemSize: 16,
                                            initialRating: double.parse('4'),
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            itemCount: 5,
                                            itemPadding: EdgeInsets.zero,
                                            itemBuilder: (context, _ ) =>
                                            const Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                            ),
                                            onRatingUpdate: (rating){
                                              debugPrint(rating.toString());
                                            },
                                            unratedColor: Colors.grey[400],
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            'From 1200 Patients',
                                            style: Theme.of(context).textTheme.bodyText2,
                                          ),

                                        ],
                                      ),

                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children:  [
                                        const Icon(
                                          Icons.description,
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Andrology & Male Infertility Doctor',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children:  [
                                        const Icon(
                                            Icons.location_on_outlined
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Shebin El Qanater',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children:  [
                                        const Icon(
                                            Icons.money
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Fees : 250 EGP',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children:  [
                                        const Icon(
                                            Icons.timelapse
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Waiting Time : 33 Minutes',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          height: 35,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(16),
                                            color: Colors.grey[400],
                                          ),
                                          child: Center(
                                            child: Text('First available on Saturday 26/3',
                                              style: Theme.of(context).textTheme.bodyText2,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 16,
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(16),
                                        child: MaterialButton(
                                          height: 32,
                                          onPressed: (){
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => QanaterAndrologyDoc2(),
                                              ),
                                            );
                                          },
                                          color: Colors.red,
                                          child: const Text(
                                            'Book',
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Divider(thickness: 1,),


                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NewCairoAndrologyDoc2(),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.only(top:14),
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color: HexColor('#EDFDFA'),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ListTile(
                                      leading: Image.asset('assets/images/Doctor-PNG-Clipart.png',
                                        //fit: BoxFit.cover,
                                      ),
                                      title: const Text('Dr.Mohamed'),
                                      subtitle: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            "is one of the-best, doctors in the Cairo Hospital."
                                                "He has saved more than 1600 patients tn the past years,"
                                                " He has also received many awards from EUA "
                                                "and abroad as the best doctors. "
                                                "He is available on a private or schedule.",
                                            style: Theme.of(context).textTheme.bodyText2,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          RatingBar.builder(
                                            itemSize: 16,
                                            initialRating: double.parse('4'),
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            itemCount: 5,
                                            itemPadding: EdgeInsets.zero,
                                            itemBuilder: (context, _ ) =>
                                            const Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                            ),
                                            onRatingUpdate: (rating){
                                              debugPrint(rating.toString());
                                            },
                                            unratedColor: Colors.grey[400],
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            'From 1200 Patients',
                                            style: Theme.of(context).textTheme.bodyText2,
                                          ),

                                        ],
                                      ),

                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children:  [
                                        const Icon(
                                          Icons.description,
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Andrology & Male Infertility Doctor',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children:  [
                                        const Icon(
                                            Icons.location_on_outlined
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'New Cairo',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children:  [
                                        const Icon(
                                            Icons.money
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Fees : 150 EGP',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children:  [
                                        const Icon(
                                            Icons.timelapse
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Waiting Time : 24 Minutes',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          height: 35,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(16),
                                            color: Colors.grey[400],
                                          ),
                                          child: Center(
                                            child: Text('First available on Saturday 26/3',
                                              style: Theme.of(context).textTheme.bodyText2,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 16,
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(16),
                                        child: MaterialButton(
                                          height: 32,
                                          onPressed: (){
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => NewCairoAndrologyDoc2(),
                                              ),
                                            );
                                          },
                                          color: Colors.red,
                                          child: const Text(
                                            'Book',
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Divider(thickness: 1,),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AndrologyDoctor3(),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.only(top:14),
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color: HexColor('#EDFDFA'),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ListTile(
                                      leading: Image.asset('assets/images/Doctor-PNG-Clipart.png',
                                        //fit: BoxFit.cover,
                                      ),
                                      title: const Text('Dr.Ahmed'),
                                      subtitle: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            "is one of the-best, doctors in the Cairo Hospital."
                                                "He has saved more than 1600 patients tn the past years,"
                                                " He has also received many awards from EUA "
                                                "and abroad as the best doctors. "
                                                "He is available on a private or schedule.",
                                            style: Theme.of(context).textTheme.bodyText2,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          RatingBar.builder(
                                            itemSize: 16,
                                            initialRating: double.parse('4'),
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            itemCount: 5,
                                            itemPadding: EdgeInsets.zero,
                                            itemBuilder: (context, _ ) =>
                                            const Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                            ),
                                            onRatingUpdate: (rating){
                                              debugPrint(rating.toString());
                                            },
                                            unratedColor: Colors.grey[400],
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            'From 1200 Patients',
                                            style: Theme.of(context).textTheme.bodyText2,
                                          ),

                                        ],
                                      ),

                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children:  [
                                        const Icon(
                                          Icons.description,
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Andrology & Male Infertility Doctor',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children:  [
                                        const Icon(
                                            Icons.location_on_outlined
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Nasr City',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children:  [
                                        const Icon(
                                            Icons.money
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Fees : 150 EGP',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children:  [
                                        const Icon(
                                            Icons.timelapse
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Waiting Time : 24 Minutes',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          height: 35,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(16),
                                            color: Colors.grey[400],
                                          ),
                                          child: Center(
                                            child: Text('First available on Saturday 26/3',
                                              style: Theme.of(context).textTheme.bodyText2,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 16,
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(16),
                                        child: MaterialButton(
                                          height: 32,
                                          onPressed: (){
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => AndrologyDoctor3(),
                                              ),
                                            );
                                          },
                                          color: Colors.red,
                                          child: const Text(
                                            'Book',
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Divider(thickness: 1,),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NewCairoAndrologyDoc3(),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.only(top:14),
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color: HexColor('#EDFDFA'),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ListTile(
                                      leading: Image.asset('assets/images/Doctor-PNG-Clipart.png',
                                        //fit: BoxFit.cover,
                                      ),
                                      title: const Text('Dr.Ahmed'),
                                      subtitle: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            "is one of the-best, doctors in the Cairo Hospital."
                                                "He has saved more than 1600 patients tn the past years,"
                                                " He has also received many awards from EUA "
                                                "and abroad as the best doctors. "
                                                "He is available on a private or schedule.",
                                            style: Theme.of(context).textTheme.bodyText2,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          RatingBar.builder(
                                            itemSize: 16,
                                            initialRating: double.parse('4'),
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            itemCount: 5,
                                            itemPadding: EdgeInsets.zero,
                                            itemBuilder: (context, _ ) =>
                                            const Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                            ),
                                            onRatingUpdate: (rating){
                                              debugPrint(rating.toString());
                                            },
                                            unratedColor: Colors.grey[400],
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            'From 1200 Patients',
                                            style: Theme.of(context).textTheme.bodyText2,
                                          ),

                                        ],
                                      ),

                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children:  [
                                        const Icon(
                                          Icons.description,
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Andrology & Male Infertility Doctor',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children:  [
                                        const Icon(
                                            Icons.location_on_outlined
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'New Cairo',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children:  [
                                        const Icon(
                                            Icons.money
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Fees : 150 EGP',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children:  [
                                        const Icon(
                                            Icons.timelapse
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Waiting Time : 24 Minutes',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          height: 35,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(16),
                                            color: Colors.grey[400],
                                          ),
                                          child: Center(
                                            child: Text('First available on Saturday 26/3',
                                              style: Theme.of(context).textTheme.bodyText2,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 16,
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(16),
                                        child: MaterialButton(
                                          height: 32,
                                          onPressed: (){
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => NewCairoAndrologyDoc3(),
                                              ),
                                            );
                                          },
                                          color: Colors.red,
                                          child: const Text(
                                            'Book',
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Divider(thickness: 1,),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => QalyubAndrologyDoc1(),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.only(top:14),
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color: HexColor('#EDFDFA'),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ListTile(
                                      leading: Image.asset('assets/images/Doctor-PNG-Clipart.png',
                                        //fit: BoxFit.cover,
                                      ),
                                      title: const Text('Dr.nashwa esmail'),
                                      subtitle: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            "is one of the-best, doctors in the Cairo Hospital."
                                                "He has saved more than 1600 patients tn the past years,"
                                                " He has also received many awards from EUA "
                                                "and abroad as the best doctors. "
                                                "He is available on a private or schedule.",
                                            style: Theme.of(context).textTheme.bodyText2,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          RatingBar.builder(
                                            itemSize: 16,
                                            initialRating: double.parse('4.5'),
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            itemCount: 5,
                                            itemPadding: EdgeInsets.zero,
                                            itemBuilder: (context, _ ) =>
                                            const Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                            ),
                                            onRatingUpdate: (rating){
                                              debugPrint(rating.toString());
                                            },
                                            unratedColor: Colors.grey[400],
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            'From 1500 Patients',
                                            style: Theme.of(context).textTheme.bodyText2,
                                          ),

                                        ],
                                      ),

                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children:  [
                                        const Icon(
                                          Icons.description,
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Andrology & Male Infertility Doctor',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children:  [
                                        const Icon(
                                            Icons.location_on_outlined
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Qalyub',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children:  [
                                        const Icon(
                                            Icons.money
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Fees : 120 EGP',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children:  [
                                        const Icon(
                                            Icons.timelapse
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Waiting Time : 19 Minutes',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          height: 35,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(16),
                                            color: Colors.grey[400],
                                          ),
                                          child: Center(
                                            child: Text('First available on Saturday 26/3',
                                              style: Theme.of(context).textTheme.bodyText2,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 16,
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(16),
                                        child: MaterialButton(
                                          height: 32,
                                          onPressed: (){
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => QalyubAndrologyDoc1(),
                                              ),
                                            );
                                          },
                                          color: Colors.red,
                                          child: const Text(
                                            'Book',
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Divider(thickness: 1,),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => shoubraAndrologyDoc1(),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.only(top:14),
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color: HexColor('#EDFDFA'),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ListTile(
                                      leading: Image.asset('assets/images/Doctor-PNG-Clipart.png',
                                        //fit: BoxFit.cover,
                                      ),
                                      title: const Text('Dr.Mahmoud'),
                                      subtitle: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            "is one of the-best, doctors in the Cairo Hospital."
                                                "He has saved more than 1600 patients tn the past years,"
                                                " He has also received many awards from EUA "
                                                "and abroad as the best doctors. "
                                                "He is available on a private or schedule.",
                                            style: Theme.of(context).textTheme.bodyText2,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          RatingBar.builder(
                                            itemSize: 16,
                                            initialRating: double.parse('4.5'),
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            itemCount: 5,
                                            itemPadding: EdgeInsets.zero,
                                            itemBuilder: (context, _ ) =>
                                            const Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                            ),
                                            onRatingUpdate: (rating){
                                              debugPrint(rating.toString());
                                            },
                                            unratedColor: Colors.grey[400],
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            'From 1500 Patients',
                                            style: Theme.of(context).textTheme.bodyText2,
                                          ),

                                        ],
                                      ),

                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children:  [
                                        const Icon(
                                          Icons.description,
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Andrology & Male Infertility Doctor',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children:  [
                                        const Icon(
                                            Icons.location_on_outlined
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'shoubra',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children:  [
                                        const Icon(
                                            Icons.money
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Fees : 150 EGP',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children:  [
                                        const Icon(
                                            Icons.timelapse
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Waiting Time : 24 Minutes',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          height: 35,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(16),
                                            color: Colors.grey[400],
                                          ),
                                          child: Center(
                                            child: Text('First available on Saturday 26/3',
                                              style: Theme.of(context).textTheme.bodyText2,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 16,
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(16),
                                        child: MaterialButton(
                                          height: 32,
                                          onPressed: (){
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => shoubraAndrologyDoc1(),
                                              ),
                                            );
                                          },
                                          color: Colors.red,
                                          child: const Text(
                                            'Book',
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Divider(thickness: 1,),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SohagAndrologyDoc1(),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.only(top:14),
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color: HexColor('#EDFDFA'),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ListTile(
                                      leading: Image.asset('assets/images/Doctor-PNG-Clipart.png',
                                        //fit: BoxFit.cover,
                                      ),
                                      title: const Text('Dr.Maysera Medhat Badawey'),
                                      subtitle: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            "is one of the-best, doctors in the Cairo Hospital."
                                                "He has saved more than 1600 patients tn the past years,"
                                                " He has also received many awards from EUA "
                                                "and abroad as the best doctors. "
                                                "He is available on a private or schedule.",
                                            style: Theme.of(context).textTheme.bodyText2,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          RatingBar.builder(
                                            itemSize: 16,
                                            initialRating: double.parse('4.5'),
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            itemCount: 5,
                                            itemPadding: EdgeInsets.zero,
                                            itemBuilder: (context, _ ) =>
                                            const Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                            ),
                                            onRatingUpdate: (rating){
                                              debugPrint(rating.toString());
                                            },
                                            unratedColor: Colors.grey[400],
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            'From 1500 Patients',
                                            style: Theme.of(context).textTheme.bodyText2,
                                          ),

                                        ],
                                      ),

                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children:  [
                                        const Icon(
                                          Icons.description,
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Andrology & Male Infertility Doctor',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children:  [
                                        const Icon(
                                            Icons.location_on_outlined
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Sohag',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children:  [
                                        const Icon(
                                            Icons.money
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Fees : 100 EGP',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children:  [
                                        const Icon(
                                            Icons.timelapse
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Waiting Time : 16 Minutes',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          height: 35,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(16),
                                            color: Colors.grey[400],
                                          ),
                                          child: Center(
                                            child: Text('First available on Saturday 26/3',
                                              style: Theme.of(context).textTheme.bodyText2,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 16,
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(16),
                                        child: MaterialButton(
                                          height: 32,
                                          onPressed: (){
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => SohagAndrologyDoc1(),
                                              ),
                                            );
                                          },
                                          color: Colors.red,
                                          child: const Text(
                                            'Book',
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Divider(thickness: 1,),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BenhaAndrologyDoc2(),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.only(top:14),
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color: HexColor('#EDFDFA'),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ListTile(
                                      leading: Image.asset('assets/images/Doctor-PNG-Clipart.png',
                                        //fit: BoxFit.cover,
                                      ),
                                      title: const Text('Dr.hamouda elshereef'),
                                      subtitle: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            "is one of the-best, doctors in the Cairo Hospital."
                                                "He has saved more than 1600 patients tn the past years,"
                                                " He has also received many awards from EUA "
                                                "and abroad as the best doctors. "
                                                "He is available on a private or schedule.",
                                            style: Theme.of(context).textTheme.bodyText2,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          RatingBar.builder(
                                            itemSize: 16,
                                            initialRating: double.parse('4'),
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            itemCount: 5,
                                            itemPadding: EdgeInsets.zero,
                                            itemBuilder: (context, _ ) =>
                                            const Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                            ),
                                            onRatingUpdate: (rating){
                                              debugPrint(rating.toString());
                                            },
                                            unratedColor: Colors.grey[400],
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            'From 1200 Patients',
                                            style: Theme.of(context).textTheme.bodyText2,
                                          ),

                                        ],
                                      ),

                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children:  [
                                        const Icon(
                                          Icons.description,
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Andrology & Male Infertility Doctor',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children:  [
                                        const Icon(
                                            Icons.location_on_outlined
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'benha',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children:  [
                                        const Icon(
                                            Icons.money
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Fees : 225 EGP',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children:  [
                                        const Icon(
                                            Icons.timelapse
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Waiting Time : 37 Minutes',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          height: 35,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(16),
                                            color: Colors.grey[400],
                                          ),
                                          child: Center(
                                            child: Text('First available on Saturday 26/3',
                                              style: Theme.of(context).textTheme.bodyText2,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 16,
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(16),
                                        child: MaterialButton(
                                          height: 32,
                                          onPressed: (){
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => BenhaAndrologyDoc2(),
                                              ),
                                            );
                                          },
                                          color: Colors.red,
                                          child: const Text(
                                            'Book',
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Divider(thickness: 1,),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ElqanaterAndrologyDoc1(),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.only(top:14),
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color: HexColor('#EDFDFA'),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ListTile(
                                      leading: Image.asset('assets/images/Doctor-PNG-Clipart.png',
                                        //fit: BoxFit.cover,
                                      ),
                                      title: const Text('Dr.salah elhamshary'),
                                      subtitle: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            "is one of the-best, doctors in the Cairo Hospital."
                                                "He has saved more than 1600 patients tn the past years,"
                                                " He has also received many awards from EUA "
                                                "and abroad as the best doctors. "
                                                "He is available on a private or schedule.",
                                            style: Theme.of(context).textTheme.bodyText2,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          RatingBar.builder(
                                            itemSize: 16,
                                            initialRating: double.parse('4.5'),
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            itemCount: 5,
                                            itemPadding: EdgeInsets.zero,
                                            itemBuilder: (context, _ ) =>
                                            const Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                            ),
                                            onRatingUpdate: (rating){
                                              debugPrint(rating.toString());
                                            },
                                            unratedColor: Colors.grey[400],
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            'From 1500 Patients',
                                            style: Theme.of(context).textTheme.bodyText2,
                                          ),

                                        ],
                                      ),

                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children:  [
                                        const Icon(
                                          Icons.description,
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Andrology & Male Infertility Doctor Doctor',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children:  [
                                        const Icon(
                                            Icons.location_on_outlined
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Shebin El Qanater',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children:  [
                                        const Icon(
                                            Icons.money
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Fees : 225 EGP',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children:  [
                                        const Icon(
                                            Icons.timelapse
                                        ),
                                        const SizedBox(width: 8,),
                                        Text(
                                          'Waiting Time : 37 Minutes',
                                          style: Theme.of(context).textTheme.bodyText2,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          height: 35,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(16),
                                            color: Colors.grey[400],
                                          ),
                                          child: Center(
                                            child: Text('First available on Saturday 26/3',
                                              style: Theme.of(context).textTheme.bodyText2,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 16,
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(16),
                                        child: MaterialButton(
                                          height: 32,
                                          onPressed: (){
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => ElqanaterAndrologyDoc1(),
                                              ),
                                            );
                                          },
                                          color: Colors.red,
                                          child: const Text(
                                            'Book',
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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
