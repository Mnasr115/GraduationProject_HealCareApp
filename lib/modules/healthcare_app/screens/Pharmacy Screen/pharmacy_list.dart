import 'package:flutter/material.dart';



class PharmacyList extends StatelessWidget {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  bool isBottomSheetShow = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
        title:  const Text('Pharmacy'),
      ),

      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 25, left: 20, right:  20),
          child: Column(
            children:
            [
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
                        /*Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HeartFunction(),
                          ),
                        );*/
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
                                    'Mother and Baby',
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
                        /*Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HeartFunction(),
                          ),
                        );*/
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
                                    'Pandemic Essentials',
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
                        /*Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HeartFunction(),
                          ),
                        );*/
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
                                    'Common symptoms',
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
                        /*Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HeartFunction(),
                          ),
                        );*/
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
                                    'Antibiotics',
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
                        /*Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HeartFunction(),
                          ),
                        );*/
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
                                    'Specialty Medications',
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
                        /*Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HeartFunction(),
                          ),
                        );*/
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
                                    'Respiratory medications',
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
                        /*Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HeartFunction(),
                          ),
                        );*/
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
                                    'Eye Care Medications',
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
                        /*Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HeartFunction(),
                          ),
                        );*/
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
                                    'First Aid',
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
                        /*Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HeartFunction(),
                          ),
                        );*/
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
                                    'Pain Relief',
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
                        /*Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HeartFunction(),
                          ),
                        );*/
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
                                    'Oral Care',
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
                        /*Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HeartFunction(),
                          ),
                        );*/
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
                                    'Supplements & Vitamins',
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
