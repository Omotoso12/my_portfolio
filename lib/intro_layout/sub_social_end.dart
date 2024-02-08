import 'package:flutter/material.dart';

class SubSocial extends StatelessWidget {
  const SubSocial({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.15,
      height: MediaQuery.sizeOf(context).width * 0.15,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Container(
              width: MediaQuery.sizeOf(context).width * 0.035,
              height: MediaQuery.sizeOf(context).width * 0.035,
              decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/xlogo.png'))),
            ),

            GestureDetector(
              onTap: (){},
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.09,
                height: MediaQuery.sizeOf(context).width * 0.03,
                child: const FittedBox(
                    fit: BoxFit.fill,
                    child: Text(
                      'Twitter ',
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0), fontFamily: 'Inder'),
                    )),
              ),
            ),
          ]),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Container(
              width: MediaQuery.sizeOf(context).width * 0.035,
              height: MediaQuery.sizeOf(context).width * 0.035,
              decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/gitlogo.png'))),
            ),

            GestureDetector(
              onTap: (){},
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.09,
                height: MediaQuery.sizeOf(context).width * 0.03,
                child: const FittedBox(
                    fit: BoxFit.fill,
                    child: Text(
                      'GitHub  ',
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0), fontFamily: 'Inder'),
                    )),
              ),
            ),
          ]),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Container(
              width: MediaQuery.sizeOf(context).width * 0.035,
              height: MediaQuery.sizeOf(context).width * 0.035,
              decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/linklogo.png'))),
            ),

            GestureDetector(
              onTap: (){},
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.09,
                height: MediaQuery.sizeOf(context).width * 0.03,
                child: const FittedBox(
                    fit: BoxFit.fill,
                    child: Text(
                      'LinkedIn',
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0), fontFamily: 'Inder'),
                    )),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
