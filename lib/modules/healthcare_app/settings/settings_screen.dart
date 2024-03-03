import 'package:final_project/modules/healthcare_app/screens/packages_screen/package_screen.dart';
import 'package:final_project/my_flutter_icon_icons.dart';
import 'package:flutter/material.dart';


class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Scaffold(
     body: Container(
       margin: const EdgeInsets.only(top: 40,),
       child: Padding(
         padding: const EdgeInsets.only(top: 100,left: 20,right: 20),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           mainAxisAlignment: MainAxisAlignment.start,
           children: [
             Row(
               children: const [
                 Icon(
                   MyFlutterIcon.local_pharmacy,
                   color: Colors.indigo,
                   size: 30,
                 ),
                 SizedBox(
                   width: 10,
                 ),
                 Text(
                   'HealthApp',
                   style: TextStyle(
                     fontWeight: FontWeight.bold,
                     fontSize: 30,
                     color: Colors.indigo,
                   ),
                 ),
               ],
             ),
             const SizedBox(
               height: 40,
             ),

             GestureDetector(
               onTap: (){
                 Navigator.push(
                   context,
                   MaterialPageRoute(
                     builder: (context) => PackageScreen(),
                   ),
                 );
               },
               child:  Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   const Icon(
                     Icons.star,
                   ),
                   const Text(
                     'Health Packages',
                     style: TextStyle(
                         fontSize: 25
                     ),
                   ),
                   IconButton(
                     onPressed: (){
                       Navigator.push(
                         context,
                         MaterialPageRoute(
                           builder: (context) => PackageScreen(),
                         ),
                       );
                     },
                     icon: Icon(Icons.arrow_forward_ios),
                   ),
                 ],
               ),
             ),

             const Divider(
               height: 30,
               thickness: 1,
             ),

             GestureDetector(
               onTap: (){
                 Navigator.push(
                   context,
                   MaterialPageRoute(
                     builder: (context) => PackageScreen(),
                   ),
                 );
               },
               child:  Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   const Icon(
                     Icons.star,
                   ),
                   const Text(
                     'About App',
                     style: TextStyle(
                         fontSize: 25
                     ),
                   ),
                   IconButton(
                     onPressed: (){
                       Navigator.push(
                         context,
                         MaterialPageRoute(
                           builder: (context) => PackageScreen(),
                         ),
                       );
                     },
                     icon: const Icon(Icons.arrow_forward_ios),
                   ),
                 ],
               ),
             ),

             const Divider(
               height: 30,
               thickness: 1,
             ),
             
             GestureDetector(
               onTap: (){
                 Navigator.push(
                   context,
                   MaterialPageRoute(
                     builder: (context) => PackageScreen(),
                   ),
                 );
               },
               child:  Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   const Icon(
                     Icons.language,
                   ),
                   const Text(
                     'Language',
                     style: TextStyle(
                         fontSize: 25
                     ),
                   ),
                   IconButton(
                     onPressed: (){
                       Navigator.push(
                         context,
                         MaterialPageRoute(
                           builder: (context) => PackageScreen(),
                         ),
                       );
                     },
                     icon: const Icon(Icons.arrow_forward_ios),
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
