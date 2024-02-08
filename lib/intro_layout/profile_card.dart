import 'package:flutter/material.dart';


class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image:AssetImage(
                'assets/profilebar.png'
                )
              )
          ),),

           Padding(
              padding: EdgeInsets.only(bottom: MediaQuery.sizeOf(context).width * 0.07),
              child: SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.22,
              height: MediaQuery.sizeOf(context).height * 0.11,
              child: const FittedBox(
                child: Text('Omotoso Ooreoluwa A', 
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 40.0,
                      fontFamily: 'Inder'
                    ),)
                    ),
              ),
            ),

             Padding(
              padding: EdgeInsets.only(bottom: MediaQuery.sizeOf(context).width * 0.03),
              child: SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.22,
              height: MediaQuery.sizeOf(context).height * 0.11,
              child: const FittedBox(
                child: Text('Lets Get Started', 
                    style: TextStyle(
                      color: Color.fromARGB(255, 51, 72, 147),
                      fontSize: 40.0,
                      fontFamily: 'Inder'
                    ),)
                    ),
              ),
            ),

      ],
    );
  }
  }
