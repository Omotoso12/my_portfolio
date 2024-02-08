import 'package:flutter/material.dart';

class DescrptionCard extends StatelessWidget {
  const DescrptionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
                    padding: EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).width * 0.02),
                    child: SizedBox(
                    width: MediaQuery.sizeOf(context).width ,
                    height: MediaQuery.sizeOf(context).width * 0.14,
                    child: const FittedBox(
                      fit: BoxFit.fill,
                      child: Text('     I’m a graduate in the study Electrical and Electronic Engineering, at Ladoke \nAkintola University of Technology (LAUTECH) Ogbomoso, Nigeria. skilled in the art \nof Mobile application development,strong point as a developer, also passive skills of \nPhotoshop graphics editing and electrical prototyping.', 
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontFamily: 'Inder'
                          ),
                          )
                          ),
                    ),
                             ),

          Padding(
                    padding: EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).width * 0.02),
                    child: SizedBox(
                    width: MediaQuery.sizeOf(context).width ,
                    height: MediaQuery.sizeOf(context).width * 0.07,
                    child: const FittedBox(
                      fit: BoxFit.fill,
                      child: Text('     I enjoy exploring Software Application, reading frictional, Historical novels and \nwatch anime (weeb) and talking life with friends and family.', 
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontFamily: 'Inder'
                          ),
                          )
                          ),
                    ),
                             ),
      ],
    );
  }
}