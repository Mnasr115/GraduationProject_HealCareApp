import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'functions_screen/allergy_check/allergy_function.dart';
import 'functions_screen/anemia_check/anemia_function.dart';
import 'functions_screen/bone_check/bone_function.dart';
import 'functions_screen/children_check/children_function.dart';
import 'functions_screen/diabetes_check/diabetes_function.dart';
import 'functions_screen/general_wellness/generalwellness_function.dart';
import 'functions_screen/heart_check/heart_function.dart';
import 'functions_screen/kidney_check/kidney_function.dart';
import 'functions_screen/liver_check/liver_function.dart';
import 'functions_screen/pregnancy_tests/pregnancy_function.dart';
import 'functions_screen/stomach_function/stomach_function.dart';


class PackageScreen extends StatelessWidget {
  const PackageScreen({Key? key}) : super(key: key);

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
        title: const Text(
          'Packages'
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          margin: const EdgeInsets.only(top: 25, left: 20, right:  20),
          child: Column(
            children: [

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
               /// margin: const EdgeInsets.only(top: 20,bottom: 10),
                height: MediaQuery.of(context).size.height,
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
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

                    GestureDetector(
                      onTap: (){
                         Navigator.push(
                          context,
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

                    GestureDetector(
                      onTap: (){
                         Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AnemiaFunction(),
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
                                        'assets/images/Anemia Check.jpg'
                                    )),
                                  ),

                                  Text(
                                    'Anemia Check',
                                    style: Theme.of(context).textTheme.button!.copyWith(color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    GestureDetector(
                      onTap: (){
                         Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PregnancyFunction(),
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
                                      'assets/images/pregnant-test.png',
                                    )),
                                  ),

                                  Text(
                                    'Pregnancy Tests',
                                    style: Theme.of(context).textTheme.button!.copyWith(color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    GestureDetector(
                      onTap: (){
                         Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AllergyFunction(),
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
                                      'assets/images/allergy_test.jpg',
                                    )),
                                  ),

                                  Text(
                                    'Allergy Tests',
                                    style: Theme.of(context).textTheme.button!.copyWith(color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    GestureDetector(
                      onTap: (){
                         Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DiabetesFunction(),
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
                                      'assets/images/Diabetes _Check.jpg',
                                    )),
                                  ),

                                  Text(
                                    'Diabetes Check',
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
        ),
      ),
    );
  }
}