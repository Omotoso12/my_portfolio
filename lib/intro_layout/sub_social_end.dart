import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



  final Uri twitterUrl = Uri(scheme: 'https',
    host: 'twitter.com',
    path: '/OmotosoOoreolu1/',);
  final Uri gitUrl = Uri.parse('https://github.com/Omotoso12/');
  final Uri linkedInUrl = Uri.parse('https://www.linkedin.com/in/ooreoluwa-omotoso-452b7522a/');
  
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
              onTap: () => _launchTwitter(twitterUrl),
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
              onTap: () => _launchGit(gitUrl),
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
              onTap: () => _launchLinkedIn(linkedInUrl),
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

  Future<void> _launchTwitter(Uri url) async {
    if (!await launchUrl(
      url,
      webOnlyWindowName: "_self"
    )){
      throw Exception('Could not launch $url');
    }
  }

  Future<void> _launchGit(Uri url) async {
    if (!await launchUrl(
      url,
      webOnlyWindowName: "_self"
      )){
      throw Exception('Could not launch $url');
    }
  }

  Future<void> _launchLinkedIn(Uri url) async {
    if (!await launchUrl(
      url,
      webOnlyWindowName: "_self"
      )){
      throw Exception('Could not launch $url');
    }
  }