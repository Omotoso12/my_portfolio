import 'package:flutter/material.dart';
import 'package:my_portfolio/intro_layout/pojects/project_data.dart';

class ProjectCard extends StatelessWidget {
  final List<ProjectSet> projectItems;
  const ProjectCard({super.key, required this.projectItems});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
            gridDelegate:  SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: MediaQuery.sizeOf(context).width * 0.4,
                crossAxisSpacing: 1,
                mainAxisSpacing: 1),
            itemCount: projectItems.length,
            itemBuilder: (context, index) {
              // initializing data
              final project = projectItems[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridTile( 
                  footer: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.2,
                      height: MediaQuery.sizeOf(context).width * 0.06,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                           height: MediaQuery.sizeOf(context).width * 0.02,
                          child:  FittedBox(
                            child: Text(project.title, 
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontFamily: 'Inder'
                                ),)
                                ),
                          ),
                           SizedBox(
                           height: MediaQuery.sizeOf(context).width * 0.01,
                          child:  FittedBox(
                            child: Text(project.subTitle, 
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontFamily: 'Inder'
                                ),)
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),// experience
                  child: Padding(
                    padding: EdgeInsets.only(
                     top: MediaQuery.sizeOf(context).width * 0.02,
                     bottom: MediaQuery.sizeOf(context).width * 0.06, 
                   ),
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                              image:
                                  AssetImage(project.imageASSET), // progress image
                              fit: BoxFit.fill),

                           ),
                    ),
                  ),
                ),
              );
            });
  }
}