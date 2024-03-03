
import 'package:final_project/modules/healthcare_app/user/login/cubit/cubit.dart';
import 'package:final_project/modules/healthcare_app/user/login/cubit/states.dart';
import 'package:final_project/modules/healthcare_app/user/register/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../layouts/home_nvi_bar.dart';
import '../../../../layouts/home_screen/home_screen.dart';
import '../../../../shared/component/components.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with TickerProviderStateMixin {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool isPasswordShow = true;

  late AnimationController animationController1;

  late Animation<Offset> animationOffset1;

  late AnimationController animationController2;

  late Animation<Offset> animationOffset2;

  @override
  void initState() {
    super.initState();
    animationController1 = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 900));
    animationOffset1 =
        Tween<Offset>(begin: const Offset(4.0, 0.0), end: const Offset(0, 0))
            .animate(
          CurvedAnimation(
            parent: animationController1,
            curve: Curves.easeIn,
          ),
        );

    animationController2 = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));
    animationOffset2 =
        Tween<Offset>(begin: const Offset(5.0, 0.0), end: const Offset(0, 0))
            .animate(
          CurvedAnimation(
            parent: animationController1,
            curve: Curves.easeIn,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    animationController1.forward();
    animationController2.forward();
    final size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (BuildContext context) => LoginCubit(),
      child: BlocConsumer<LoginCubit,LoginStates>(
        listener: (BuildContext context, state) {  },
        builder: (BuildContext context, state) {
          return Scaffold(
            appBar: AppBar(
              leading:
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                ),
              ),
              title: const Text(
                'LOGIN',
              ),
            ),
            body: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SlideTransition(
                          position: animationOffset1,
                          child: const Opacity(
                            opacity: 1,
                            child: Text(
                              'Login ',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),

                        SlideTransition(
                          position: animationOffset1,
                          child: const Opacity(
                            opacity: 1,
                            child: Text(
                              'Login now to browse our hot app',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(
                          height: 30.0,
                        ),

                        SlideTransition(
                          textDirection: TextDirection.ltr,
                          position: animationOffset1,
                          child: SizedBox(
                            child: Image.asset('assets/images/login.png',),
                            width: double.infinity,
                          ),
                        ),

                        const SizedBox(
                          height: 30.0,
                        ),

                        TextFormField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          validator: (value)
                          {
                            if(value!.isEmpty)
                            {
                              return 'Email must not be empty, Enter your email';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            labelText: ('E-mail Address'),
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(
                              Icons.email,
                            ),
                          ),
                        ),

                        const SizedBox(
                          height: 15.0,
                        ),

                        TextFormField(
                          controller: passwordController,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: isPasswordShow,
                          validator: (value)
                          {
                            if(value!.isEmpty)
                            {
                              return 'Password must not be empty, Enter your Password';
                            }
                          },
                          decoration: InputDecoration(
                            labelText: ('Password'),
                            border: const OutlineInputBorder(),
                            prefixIcon: const Icon(
                                Icons.lock
                            ),
                            suffixIcon: GestureDetector(
                              onTap: ()
                              {
                                setState(() {
                                  isPasswordShow=!isPasswordShow;
                                });
                              },
                              child: Icon(
                                isPasswordShow ? Icons.visibility :Icons.visibility_off,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(
                          height: 15.0,
                        ),

                        Defaultbotton(
                          text: 'Login',
                          onPress: (){

                            if(formKey.currentState!.validate())
                            {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context)=> home_nvi_bar(),
                                ),
                              );
                              /*FirebaseAuth.instance.signInWithEmailAndPassword(
                                email: emailController.text,
                                password: passwordController.text)
                                .then((value) {
                              print('Created New Account');
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context)=> NewHomeScreen(),
                                ),
                              );
                            }).onError((error, stackTrace) {
                              print('Error ${error.toString()}');
                            });*/
                            }

                          },
                        ),


                        const SizedBox(
                          height: 10.0,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Don\'t have an Account ?',
                            ),
                            TextButton(
                              onPressed: ()
                              {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context)=> RegisterScreen(),
                                  ),
                                );
                              },
                              child: const Text(
                                'Register',
                                style: TextStyle(
                                  color: Colors.indigo,
                                ),
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}



