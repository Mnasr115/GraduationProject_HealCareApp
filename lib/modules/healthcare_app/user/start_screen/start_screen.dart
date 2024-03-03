
import 'package:final_project/modules/healthcare_app/user/register/register_screen.dart';
import 'package:flutter/material.dart';

import '../../../../shared/component/components.dart';
import '../login/login_screen.dart';



class StartScreen extends StatefulWidget {

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> with TickerProviderStateMixin

{
  late AnimationController animationController5 ;

  late Animation<Offset> animationOffset5 ;

  late AnimationController animationController6 ;

  late Animation<Offset> animationOffset6 ;

  @override
  void initState() {
    super.initState();
    animationController5 = AnimationController(vsync: this,duration: const Duration(milliseconds: 900));
    animationOffset5 = Tween<Offset>(begin: const Offset(4.0,0.0), end: const Offset(0,0) ).animate(
      CurvedAnimation(
        parent: animationController5,
        curve: Curves.easeIn,
      ),
    );

    animationController6 = AnimationController(vsync: this,duration: const Duration(milliseconds: 900));
    animationOffset6 = Tween<Offset>(begin: const Offset(4.0,0.0), end: const Offset(0,0) ).animate(
      CurvedAnimation(
        parent: animationController5,
        curve: Curves.easeIn,
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    animationController5.forward();
    animationController6.forward();
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body:Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SlideTransition(
                position: animationOffset5,
                child: const Opacity(
                  opacity: 1,
                  child: Text(
                    'Welcome to Our App',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 20.0,
              ),

              SlideTransition(

                position: animationOffset6,
                child: SizedBox(
                  child: Image.asset('assets/images/welcome.png',),
                  width: double.infinity,
                ),
              ),

              const SizedBox(
                height: 20.0,
              ),

              Defaultbotton(
                text: 'Login',
                onPress: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=> LoginScreen(),
                    ),
                  );
                },
              ),


              const SizedBox(
                height: 20.0,
              ),

              Defaultbotton(
                text: 'Register',
                onPress: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=> RegisterScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
