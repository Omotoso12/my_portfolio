import 'package:flutter/material.dart';
import 'package:my_portfolio/intro_layout/skill/skill_data.dart';

class SkillCard extends StatelessWidget {
  final List<SkillSet> skillItems;
  const SkillCard({super.key, required this.skillItems});

  @override
  Widget build(BuildContext context) {
    
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: MediaQuery.sizeOf(context).height * 0.02),
          child: Container(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).width * 0.001,
            decoration: const BoxDecoration(
              color: Colors.black
            ),
          ),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
          padding: EdgeInsets.symmetric(vertical: MediaQuery.sizeOf(context).height * 0.02),
          child: Container(
            width: MediaQuery.sizeOf(context).width * 0.001,
            height: MediaQuery.sizeOf(context).width * 0.7,
            decoration: const BoxDecoration(
              color: Colors.black
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: MediaQuery.sizeOf(context).height * 0.02),
          child: Container(
            width: MediaQuery.sizeOf(context).width * 0.001,
            height: MediaQuery.sizeOf(context).width * 0.7,
            decoration: const BoxDecoration(
              color: Colors.black
            ),
          ),
        ),
          ],
        ),
        
        GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
            gridDelegate:  SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: MediaQuery.sizeOf(context).width * 0.4,
                
                crossAxisSpacing: 1,
                mainAxisSpacing: 1),
            itemCount: skillItems.length,
            itemBuilder: (context, index) {
              // initializing data
              final skill = skillItems[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridTile(
                header:  Align(
                  alignment: AlignmentDirectional.topStart,
                  child: SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.15,
                  height: MediaQuery.sizeOf(context).height * 0.07,
                  child: FittedBox(
                    child: Text(skill.name, 
                        style: const TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontFamily: 'Inder'
                        ),)
                        ),
                  ),
                ),// title 
                  footer: SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.1,
                  height: MediaQuery.sizeOf(context).width * 0.025,
                  child:  FittedBox(
                    child: Text(skill.experience, 
                        style: const TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontFamily: 'Inder'
                        ),)
                        ),
                  ),// experience
                  child: Padding(
                    padding: EdgeInsets.only(
                     top: MediaQuery.sizeOf(context).width * 0.06,
                     bottom: MediaQuery.sizeOf(context).width * 0.04, 
                     left: MediaQuery.sizeOf(context).width * 0.04, 
                     right: MediaQuery.sizeOf(context).width * 0.04),
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                              image:
                                  AssetImage(skill.imageASSET), // progress image
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(10.0),
                           ),
                    ),
                  ),
                ),
              );
            })
      ],
    );
  }
}

