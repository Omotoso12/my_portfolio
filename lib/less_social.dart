import 'package:flutter/material.dart';

class LessSubSocial extends StatelessWidget {
  const LessSubSocial({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.15,
      height: MediaQuery.sizeOf(context).width * 0.15,
      child: Column(
        children: [

          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.01,
            height: MediaQuery.sizeOf(context).width * 0.01,
          ),

          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Container(
              width: MediaQuery.sizeOf(context).width * 0.035,
              height: MediaQuery.sizeOf(context).width * 0.035,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/whatslogo.png'))),
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.09,
              height: MediaQuery.sizeOf(context).width * 0.03,
              child: const FittedBox(
                  fit: BoxFit.fill,
                  child: Text(
                    'WhatsApp',
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontFamily: 'Inder'),
                  )),
            ),
          ]),
          
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.01,
            height: MediaQuery.sizeOf(context).width * 0.03,
          ),


          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Container(
              width: MediaQuery.sizeOf(context).width * 0.035,
              height: MediaQuery.sizeOf(context).width * 0.035,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/maillogo.png'))),
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.09,
              height: MediaQuery.sizeOf(context).width * 0.03,
              child: const FittedBox(
                  fit: BoxFit.fill,
                  child: Text(
                    'Gmail   ',
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontFamily: 'Inder'),
                  )),
            ),
          ]),
        ],
      ),
    );
  }
}
