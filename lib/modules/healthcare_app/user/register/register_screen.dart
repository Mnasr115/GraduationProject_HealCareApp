
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../../../shared/component/components.dart';
import '../login/login_screen.dart';



class RegisterScreen extends StatefulWidget {
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> with TickerProviderStateMixin
{
  var firstNameController=TextEditingController();
  var lastNameController=TextEditingController();
  var emailController=TextEditingController();
  var phoneController=TextEditingController();
  var passwordController=TextEditingController();
  var dateController=TextEditingController();
  var formKey=GlobalKey<FormState>();
  bool isPasswordShow=true;

  late AnimationController animationController3 ;

  late Animation<Offset> animationOffset3 ;

  late AnimationController animationController4 ;

  late Animation<Offset> animationOffset4 ;

  @override
  void initState() {
    super.initState();
    animationController3 = AnimationController(vsync: this,duration: const Duration(milliseconds: 900));
    animationOffset3 = Tween<Offset>(begin: const Offset(4.0,0.0), end: const Offset(0,0) ).animate(
      CurvedAnimation(
        parent: animationController3,
        curve: Curves.easeIn,
      ),
    );

    animationController4 = AnimationController(vsync: this,duration: const Duration(milliseconds: 1000));
    animationOffset4 = Tween<Offset>(begin: const Offset(5.0,0.0), end: const Offset(0,0) ).animate(
      CurvedAnimation(
        parent: animationController3,
        curve: Curves.easeIn,
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    animationController3.forward();
    animationController4.forward();
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading:
        IconButton(
          onPressed: ()
          {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context)=> LoginScreen(),
              ),
            );
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
        title: const Text(
          'Sign Up',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start ,
                children: [

                  SlideTransition(
                    position: animationOffset3,
                    child: const Opacity(
                      opacity: 1,
                      child: Text(
                        'Create your account',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 15.0,
                  ),

                  SlideTransition(
                    position: animationOffset4,
                    child: SizedBox(
                      child: Image.asset('assets/images/signup.png',),
                      width: double.infinity,
                    ),
                  ),

                  TextFormField(
                    controller: firstNameController,
                    keyboardType: TextInputType.name,
                    validator: (value)
                    {
                      if(value!.isEmpty)
                      {
                        return 'required';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      labelText: ('First Name'),
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.perm_identity,
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 15.0,
                  ),

                  TextFormField(
                    controller: lastNameController,
                    keyboardType: TextInputType.name,
                    validator: (value)
                    {
                      if(value!.isEmpty)
                      {
                        return 'required';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      labelText: ('Last Name'),
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.perm_identity,
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 15.0,
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

                  TextFormField(
                    controller: phoneController,
                    keyboardType: TextInputType.number,
                    validator: (value)
                    {
                      if(value!.isEmpty)
                      {
                        return 'Enter your phone number';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      labelText: ('Phone'),
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.phone,
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 15.0,
                  ),

                  Defaultbotton(
                    text: 'Create account',
                    onPress: (){
                      if(formKey.currentState!.validate())
                      {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context)=> LoginScreen(),
                          ),
                        );
                        /*FirebaseAuth.instance.createUserWithEmailAndPassword(
                            email: emailController.text,
                            password: passwordController.text).then((value) {
                          print('Created New Account');
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context)=> LoginScreen(),
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
                        'Already have an Account ?',
                      ),
                      TextButton(
                        onPressed: ()
                        {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context)=> const LoginScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          'Sign In',
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
  }
}
