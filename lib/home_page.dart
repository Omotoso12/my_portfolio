import 'package:flutter/material.dart';
import 'package:my_portfolio/intro_layout/skill/skill_data.dart';
import 'package:my_portfolio/intro_layout/pojects/project_card.dart';
import 'package:my_portfolio/intro_layout/pojects/project_data.dart';
import 'intro_layout/des_card.dart';
import 'intro_layout/end.dart';
import 'intro_layout/profile_card.dart';
import 'intro_layout/intro_card.dart';
import 'intro_layout/skill/skill_card.dart';

class SkillRepository {
  Future<List<SkillSet>> mockRequest() async =>
      await Future.delayed(const Duration(seconds: 1), (() => setData));
}

class ProjectRepository {
  Future<List<ProjectSet>> mockRequest() async =>
      await Future.delayed(const Duration(seconds: 1), (() => proData));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 157, 173, 229),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // introduction layout
            Row(
              children: <Widget>[
                SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.53,
                    height: MediaQuery.sizeOf(context).width * 0.4,
                    child: const IntroCard()),
                SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.47,
                    height: MediaQuery.sizeOf(context).width * 0.4,
                    child: const ProfileCard())
              ],
            ),
////////////////////////////////////////////////////Description/////////////////////////////////////////////////////////////
            SizedBox(height: MediaQuery.sizeOf(context).width * 0.01),

            Align(
              alignment: AlignmentDirectional.topStart,
              child: Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.sizeOf(context).width * 0.02),
                child: SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.15,
                  height: MediaQuery.sizeOf(context).width * 0.04,
                  child: const FittedBox(
                    fit: BoxFit.fill,
                      child: Text(
                    'Description',
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontFamily: 'Inder'),
                  )),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.sizeOf(context).width * 0.02),
              child: const Divider(
                color: Colors.white,
                thickness: 2.0,
              ),
            ),

            SizedBox(
                width: MediaQuery.sizeOf(context).width,
                child: const DescrptionCard()),

////////////////////////////////////////////////////Skills/////////////////////////////////////////////////////////////

            SizedBox(height: MediaQuery.sizeOf(context).width * 0.01),

            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.sizeOf(context).width * 0.02),
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.1,
                height: MediaQuery.sizeOf(context).width * 0.05,
                child: const FittedBox(
                  fit: BoxFit.fill,
                    child: Text(
                  'SKILLS',
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0), fontFamily: 'Inder'),
                )),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.sizeOf(context).width * 0.02),
              child: const Divider(
                color: Colors.white,
                thickness: 2.0,
              ),
            ),

            SizedBox(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).width * 0.7,
                child: SkillCard(
                  skillItems: setData,
                )),

////////////////////////////////////////////////////Projects/////////////////////////////////////////////////////////////

            SizedBox(height: MediaQuery.sizeOf(context).width * 0.01),

            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.sizeOf(context).width * 0.02),
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.15,
                height: MediaQuery.sizeOf(context).width * 0.05,
                child: const FittedBox(
                  fit: BoxFit.fill,
                    child: Text(
                  'PROJECTS',
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0), fontFamily: 'Inder'),
                )),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.sizeOf(context).width * 0.02),
              child: const Divider(
                color: Colors.white,
                thickness: 2.0,
              ),
            ),

            SizedBox(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).width * 0.7,
                child: ProjectCard(
                  projectItems: proData,
                )),

////////////////////////////////////////////////////Projects/////////////////////////////////////////////////////////////

            SizedBox(height: MediaQuery.sizeOf(context).width * 0.01),

            Container(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).width * 0.5,
              color: Colors.white,
              child: const End(),
            )
          ],
        ),
      ),
    );
  }
}
