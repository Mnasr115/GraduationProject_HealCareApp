import 'package:final_project/shared/component/components.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 50,left: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const Text(
              'Hi!',
             style: TextStyle(
               fontSize: 40,
               fontWeight: FontWeight.bold,
             ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'I\'m your assistant',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'How can i help you ?',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
              ),
            ),

            Container(
              width: 100,
              margin: const EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.blue,
              ),
              child: Defaultbotton(
                text: 'Let\s talk',
                onPress: (){
                  print('Chat');
                  /*Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=> ,
                    ),
                  );*/
                },
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),

            SizedBox(
              child: Image.asset('assets/images/chatbot.png',
              fit: BoxFit.cover,),
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}
