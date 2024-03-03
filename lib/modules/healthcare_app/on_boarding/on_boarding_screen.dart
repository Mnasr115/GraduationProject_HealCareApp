
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../my_flutter_icon_icons.dart';
import '../user/start_screen/start_screen.dart';




class BoardingModel {
  final String image;
  final String title;
  final String body;

  BoardingModel ({
    required this.title,
    required this.image,
    required this.body,
  });
}
class OnBoardingScreen extends StatefulWidget {

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> with TickerProviderStateMixin
{
  var boardController = PageController();

  List<BoardingModel> boarding = [
    BoardingModel(
      title: 'Search for your needed doctor',
      image: 'assets/images/kindpng.png',
      body: 'or upload a prescription',
    ),
    BoardingModel(
      title: 'Compare Hospitals and Prices',
      image: 'assets/images/kindpng_15.png',
      body: 'in your area',
    ),
    BoardingModel(
      title: 'Our App at your Own',
      image: 'assets/images/pharmacies.png',
      body: 'to take your comfort',
    ),
  ];
  bool isLast = false;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading:  const Icon(
          MyFlutterIcon.hospital,
          color: Colors.blue,
        ),
        actions: [
          TextButton(
            onPressed: () {
            },
            child: const Icon(
              Icons.language,
            ),
          ),
        ],

      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            Expanded(
              child: PageView.builder(
                physics: const BouncingScrollPhysics(),
                controller: boardController,
                onPageChanged: (int index)
                {
                  if (index == boarding.length-1)
                  {
                    setState(() {
                      isLast = true;
                    });
                  }
                  else
                  {
                    setState(() {
                      isLast = false;
                    });
                  }
                },
                itemBuilder: (context, index) => buildBoardingItem(boarding[index]),
                itemCount: boarding.length,
              ),
            ),

            const SizedBox(
              height: 40.0,
            ),

            Row(
              children: [
                SmoothPageIndicator(
                  controller: boardController,
                  count: boarding.length,
                  effect:  const ExpandingDotsEffect(
                      //dotColor: HexColor('#EDFDFA'),
                      dotHeight: 10,
                      activeDotColor: Colors.blue,
                      expansionFactor: 4,
                      dotWidth: 10,
                      spacing: 5.0,
                  ),
                ),
                 const Spacer(),
                 FloatingActionButton(
                  // hoverColor: HexColor('#EDFDFA'),
                   //splashColor: HexColor('#EDFDFA'),
                  onPressed: () {
                    if(isLast)
                      {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>  StartScreen(),
                          ),
                              (Route<dynamic> route) =>false,
                        );
                      }
                    boardController.nextPage(
                      duration: const Duration(milliseconds: 750),
                      curve: Curves.fastLinearToSlowEaseIn,
                    );
                  },
                  child:  const Icon(
                    Icons.arrow_forward_ios,

                  ),
                ),
              ],
            ),
          ],
        ),
      ),

    );
  }

  Widget buildBoardingItem(BoardingModel model) => Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [

      Expanded(
        child: Image(
          image: AssetImage(model.image),
          //fit: BoxFit.cover,
        ),
      ),
      const SizedBox(
        height: 15,
      ),

      Text(
        model.title,
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          color: Colors.indigo,
        ),
      ),

      const SizedBox(
        height: 4,
      ),

      Text(
        model.body,
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w400,
          color: Color(0xff363636),
        ),
      ),

      const SizedBox(
        height: 20,
      ),
    ],
  );
}
