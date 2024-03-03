
import 'package:carousel_slider/carousel_slider.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../modules/healthcare_app/Location Screen/Hospital Specialty/hospital_list.dart';
import '../../modules/healthcare_app/screens/Doctors/specialty/Andrology&MaleInfertility/cairo/nasr city/doctor1.dart';
import '../../modules/healthcare_app/screens/Doctors/specialty/Cardiology & Vascular/cairo/new cairo/doctor1.dart';
import '../../modules/healthcare_app/screens/Doctors/specialty/Dentistry/cairo/shoubra/doctor1.dart';
import '../../modules/healthcare_app/screens/Doctors/specialty/Dentistry/qalyubia/banha/doctor1.dart';
import '../../modules/healthcare_app/screens/Doctors/specialty/Dermatology/cairo/shoubra/doctor1.dart';
import '../../modules/healthcare_app/screens/Doctors/specialty/all_specialty.dart';
import '../../modules/healthcare_app/screens/Pharmacy Screen/pharmacy_list.dart';
import '../../modules/healthcare_app/screens/packages_screen/functions_screen/bone_check/bone_function.dart';
import '../../modules/healthcare_app/screens/packages_screen/functions_screen/children_check/children_function.dart';
import '../../modules/healthcare_app/screens/packages_screen/functions_screen/general_wellness/generalwellness_function.dart';
import '../../modules/healthcare_app/screens/packages_screen/functions_screen/heart_check/heart_function.dart';
import '../../modules/healthcare_app/screens/packages_screen/functions_screen/kidney_check/kidney_function.dart';
import '../../modules/healthcare_app/screens/packages_screen/functions_screen/liver_check/liver_function.dart';
import '../../modules/healthcare_app/screens/packages_screen/functions_screen/stomach_function/stomach_function.dart';
import '../../modules/healthcare_app/screens/packages_screen/package_screen.dart';
import '../../my_flutter_icon_icons.dart';
import '../../shared/cubit/cubit.dart';
import '../../shared/cubit/states.dart';



class HomeScreen extends StatelessWidget
{
  /* int current = 0 ;
  List imageList = [
    'assets/images/Healthcare.jpg',
    'assets/images/Doctor-PNG-Clipart.png',
    'assets/images/Doctor-PNG-Clipart.png',
    'assets/images/Doctor-PNG-Clipart.png',
    'assets/images/Doctor-PNG-Clipart.png',
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i=0; i<list.length;i++)
    {
      result.add(handler(i,list[i]));
    }
    return result;
  }
*/
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (BuildContext context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (BuildContext context, AppStates state) {  },
        builder: (BuildContext context, AppStates state) {
          AppCubit cubit = AppCubit.get(context);
          return Scaffold(
            key: scaffoldKey,
            body: ConditionalBuilder(
              condition: true,
              builder: (context) => Center(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Container(
                    margin: const EdgeInsets.only(top: 25, left: 20, right: 20,),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Column(
                          children:
                          [
                            CarouselSlider(
                              options: CarouselOptions(
                                height: 200,
                                initialPage: 0,
                                enlargeCenterPage: true,
                                enableInfiniteScroll: true,
                                aspectRatio: 16/9,
                                viewportFraction: 1,
                                autoPlay: true,
                                autoPlayInterval: const Duration(seconds: 2),
                                autoPlayAnimationDuration: const Duration(milliseconds: 2000),
                                onPageChanged: (index,reason){
                                  cubit.changeCurrent(index);
                                },
                              ) ,
                              items: cubit.imageList.map((imageUrl) {
                                return Builder(
                                  builder: (BuildContext context){
                                    return Container(
                                      margin: const EdgeInsets.symmetric(horizontal: 10.0),
                                      decoration: const BoxDecoration(
                                      ),
                                      child: Image.asset(imageUrl,
                                        //fit: BoxFit.fill,
                                      ),
                                    );
                                  },
                                );
                              }).toList(),
                            ),
                            const SizedBox(height: 7,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: cubit.map<Widget> (
                                  cubit.imageList,
                                      (index,url) {
                                    return Container(
                                      margin: const EdgeInsets.only(left: 5,right: 5,bottom: 10),
                                      constraints: const BoxConstraints(
                                        maxHeight: 8,
                                        maxWidth: 8,
                                        minWidth: 8,
                                        minHeight: 8,
                                      ),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: cubit.current == index
                                            ? const Color.fromRGBO(0, 0, 0, 0.9,)
                                            : const Color.fromRGBO(0, 0, 0, 0.2,),
                                      ),
                                    );
                                  }
                              ).toList(),
                            ),
                          ],
                        ),

                        const SizedBox(
                          height: 32,
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sections',
                              style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.indigo),
                            ),

                            Container(
                              margin: const EdgeInsets.only(top: 20),
                              height: 80,
                              child: ListView
                                (
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                children: [
                                  GestureDetector(
                                    onTap: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context)=>const SpecialtyScreen(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      height: 100,
                                      width: 100,
                                      padding: const EdgeInsets.only(top:14),
                                      clipBehavior: Clip.hardEdge,
                                      decoration: BoxDecoration(
                                        //color: HexColor('#EDFDFA'),
                                        borderRadius: BorderRadius.circular(16),
                                            color: Colors.white
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
                                                Icon(
                                                  MyFlutterIcon.hospital_user,
                                                  size: 24,
                                                  color: HexColor('#00C6AD'),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  'Doctor Visit',
                                                  style: TextStyle(
                                                      color: HexColor('#010101'),
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w700
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Divider(
                                    indent: 20,
                                  ),

                                  GestureDetector(
                                    onTap: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context)=> const AllHospitals(),
                                        ),
                                      );
                                    },
                                    child:  Container(
                                      height: 100,
                                      width: 100,
                                      padding: const EdgeInsets.only(top:14),
                                      clipBehavior: Clip.hardEdge,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                        //color: HexColor('#EDFDFA'),
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
                                                Icon(
                                                  MyFlutterIcon.hospital_alt,
                                                  size: 24,
                                                  color: HexColor('#00C6AD'),
                                                ),
                                                const SizedBox(
                                                  height: 8,
                                                ),
                                                Text(
                                                  'Hospital',
                                                  style: TextStyle(
                                                      color: HexColor('#010101'),
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w700
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Divider(
                                    indent: 20,
                                  ),

                                  GestureDetector(
                                    onTap: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context)=> PharmacyList(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      height: 100,
                                      width: 100,
                                      padding: const EdgeInsets.only(top:14),
                                      clipBehavior: Clip.hardEdge,
                                      decoration: BoxDecoration(
                                        //color: HexColor('#EDFDFA'),
                                        borderRadius: BorderRadius.circular(16),
                                          color: Colors.white
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
                                                Icon(
                                                  MyFlutterIcon.local_pharmacy,
                                                  size: 24,
                                                  color: HexColor('#00C6AD'),
                                                ),
                                                const SizedBox(
                                                  height: 8,
                                                ),
                                                Text(
                                                  'Pharmacy',
                                                  style: TextStyle(
                                                      color: HexColor('#010101'),
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w700
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(
                          height: 32,
                        ),


                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Packages',
                              style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.indigo),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Fits Your Health Needs',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                                TextButton(
                                  onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context)=> const PackageScreen(),
                                      ),
                                    );
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'View all',
                                        style: Theme.of(context).textTheme.bodyText2!.copyWith(color: Colors.indigo),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Icon(
                                        Icons.arrow_forward_ios,
                                        size: 10,
                                        color: Colors.indigo,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),

                            Container(
                              margin: const EdgeInsets.only(top: 20),
                              height: 80,
                              child: ListView(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                children: [
                                  GestureDetector(
                                    onTap: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const HeartFunction(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      height: 120,
                                      width: 120,
                                      padding: const EdgeInsets.only(top:14),
                                      clipBehavior: Clip.hardEdge,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
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
                                                Container(
                                                  margin: const EdgeInsets.only(bottom: 7),
                                                  height: 40,
                                                  width: 50,
                                                  child: const Image(image: AssetImage(
                                                    'assets/images/spng.png',
                                                  )),
                                                ),

                                                Text(
                                                  'Heart Check',
                                                  style: Theme.of(context).textTheme.button!.copyWith(color: Colors.black),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Divider(
                                    indent: 20,
                                  ),

                                  GestureDetector(
                                    onTap: (){
                                       Navigator.push(context,
                                         MaterialPageRoute(
                                           builder: (context) => const KidneyFunction(),
                                         ),
                                       );
                                    },
                                    child: Container(
                                      height: 120,
                                      width: 120,
                                      padding: const EdgeInsets.only(top:14),
                                      clipBehavior: Clip.hardEdge,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
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
                                                Container(
                                                  margin: const EdgeInsets.only(bottom: 7),
                                                  height: 40,
                                                  width: 50,
                                                  child: const Image(image: AssetImage(
                                                      'assets/images/kidney.png'
                                                  )),
                                                ),

                                                Text(
                                                  'Kidney Check',
                                                  style: Theme.of(context).textTheme.button!.copyWith(color: Colors.black),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Divider(
                                    indent: 20,
                                  ),

                                  GestureDetector(
                                    onTap: (){
                                       Navigator.push(
                                         context,
                                         MaterialPageRoute(
                                           builder: (context) => const GeneralWellnessFunction(),
                                         ),
                                       );
                                    },
                                    child: Container(
                                      height: 120,
                                      width: 120,
                                      padding: const EdgeInsets.only(top:14),
                                      clipBehavior: Clip.hardEdge,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
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
                                                Container(
                                                  margin: const EdgeInsets.only(bottom: 7),
                                                  height: 40,
                                                  width: 50,
                                                  child: const Image(image: AssetImage(
                                                    'assets/images/General Wellness.jpg',
                                                  )),
                                                ),

                                                Text(
                                                  'General Wellness',
                                                  style: Theme.of(context).textTheme.button!.copyWith(color: Colors.black),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Divider(
                                    indent: 20,
                                  ),

                                  GestureDetector(
                                    onTap: (){
                                       Navigator.push(
                                         context,
                                         MaterialPageRoute(
                                           builder: (context) => const LiverFunction(),
                                         ),
                                       );
                                    },
                                    child: Container(
                                      height: 120,
                                      width: 120,
                                      padding: const EdgeInsets.only(top:14),
                                      clipBehavior: Clip.hardEdge,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
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
                                                Container(
                                                  margin: const EdgeInsets.only(bottom: 7),
                                                  height: 40,
                                                  width: 50,
                                                  child: const Image(image: AssetImage(
                                                    'assets/images/liver.png',
                                                  )),
                                                ),

                                                Text(
                                                  'Liver Check',
                                                  style: Theme.of(context).textTheme.button!.copyWith(color: Colors.black),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Divider(
                                    indent: 20,
                                  ),

                                  GestureDetector(
                                    onTap: (){
                                       Navigator.push(
                                         context,
                                         MaterialPageRoute(
                                           builder: (context) => const ChildrenFunction(),
                                         ),
                                       );
                                    },
                                    child: Container(
                                      height: 120,
                                      width: 120,
                                      padding: const EdgeInsets.only(top:14),
                                      clipBehavior: Clip.hardEdge,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
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
                                                Container(
                                                  margin: const EdgeInsets.only(bottom: 7),
                                                  height: 40,
                                                  width: 50,
                                                  child: const Image(image: AssetImage(
                                                    'assets/images/Children.png',
                                                  )),
                                                ),

                                                Text(
                                                  'Children Check',
                                                  style: Theme.of(context).textTheme.button!.copyWith(color: Colors.black),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Divider(
                                    indent: 20,
                                  ),

                                  GestureDetector(
                                    onTap: (){
                                       Navigator.push(
                                         context,
                                         MaterialPageRoute(
                                           builder: (context) => const StomachFunction(),
                                         ),
                                       );
                                    },
                                    child: Container(
                                      height: 120,
                                      width: 120,
                                      padding: const EdgeInsets.only(top:14),
                                      clipBehavior: Clip.hardEdge,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
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
                                                Container(
                                                  margin: const EdgeInsets.only(bottom: 7),
                                                  height: 40,
                                                  width: 50,
                                                  child: const Image(image: AssetImage(
                                                    'assets/images/spng.png',
                                                  )),
                                                ),

                                                Text(
                                                  'Stomach Tests',
                                                  style: Theme.of(context).textTheme.button!.copyWith(color: Colors.black),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Divider(
                                    indent: 20,
                                  ),

                                  GestureDetector(
                                    onTap: (){
                                       Navigator.push(
                                         context,
                                         MaterialPageRoute(
                                           builder: (context) => const BoneFunction(),
                                         ),
                                       );
                                    },
                                    child: Container(
                                      height: 120,
                                      width: 120,
                                      padding: const EdgeInsets.only(top:14),
                                      clipBehavior: Clip.hardEdge,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
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
                                                Container(
                                                  margin: const EdgeInsets.only(bottom: 7),
                                                  height: 40,
                                                  width: 50,
                                                  child: const Image(image: AssetImage(
                                                    'assets/images/kidney.png',
                                                  )),
                                                ),

                                                Text(
                                                  'Bone & Joints',
                                                  style: Theme.of(context).textTheme.button!.copyWith(color: Colors.black),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),

                        const SizedBox(
                          height: 32,
                        ),

                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Top Doctors',
                                  style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.indigo),
                                ),
                                TextButton(
                                  onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context)=> SpecialtyScreen(),
                                      ),
                                    );
                                  },
                                  child:  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'View all',
                                        style: Theme.of(context).textTheme.bodyText2!.copyWith(color: Colors.indigo),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Icon(
                                        Icons.arrow_forward_ios,
                                        size: 10,
                                        color: Colors.indigo,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),

                            const SizedBox(
                              height: 20,
                            ),

                            ListView(
                              shrinkWrap: true,
                              physics: const BouncingScrollPhysics(),
                              children: [
                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => shoubraDoctor1(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.only(top:14),
                                    clipBehavior: Clip.hardEdge,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
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
                                                        'Dentist Doctor',
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
                                                              builder: (context) => shoubraDoctor1(),
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
                                        builder: (context) => BenhaDoctor1(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.only(top:14),
                                    clipBehavior: Clip.hardEdge,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
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
                                                    title: const Text('Dr.samir mohammed halawa'),
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
                                                        'Dentist Doctor',
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
                                                              builder: (context) => BenhaDoctor1(),
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
                                        builder: (context) => AndrologyDoctor1(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.only(top:14),
                                    clipBehavior: Clip.hardEdge,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
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
                                        builder: (context) => NewCairoCardiologyDoc1(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.only(top:14),
                                    clipBehavior: Clip.hardEdge,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
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
                                                        'Cardiology & Vascular Doctor',
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
                                                              builder: (context) => NewCairoCardiologyDoc1(),
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
                                        builder: (context) => shoubraDermatologyDoc1(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.only(top:14),
                                    clipBehavior: Clip.hardEdge,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
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
                                                        'Dermatology Doctor',
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
                                                              builder: (context) => shoubraDermatologyDoc1(),
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
                      ],
                    ),
                  ),
                ),
              ),
              fallback: (context) => const Center(
                child: CircularProgressIndicator(),
              ),
            ),

          );
        },),
    );

  }
}

