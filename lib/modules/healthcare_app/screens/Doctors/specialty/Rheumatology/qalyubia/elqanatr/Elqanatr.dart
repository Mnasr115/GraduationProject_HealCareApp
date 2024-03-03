import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hexcolor/hexcolor.dart';

import 'doctor1.dart';
import 'doctor2.dart';





class ElqanatrRheumatology extends StatefulWidget {
  const ElqanatrRheumatology({Key? key}) : super(key: key);

  @override
  State<ElqanatrRheumatology> createState() => _ElqanatrRheumatologyState();
}

class _ElqanatrRheumatologyState extends State<ElqanatrRheumatology> {
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
        title: const Text(
          'Doctors',
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
                          builder: (context) => ElqanaterRheumatologyDoc1(),
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
                                          'Rheumatology Doctor',
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
                                                builder: (context) => ElqanaterRheumatologyDoc1(),
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
                          builder: (context) => QanaterRheumatologyDoc2(),
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
                                          'Rheumatology Doctor',
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
                                                builder: (context) => QanaterRheumatologyDoc2(),
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
