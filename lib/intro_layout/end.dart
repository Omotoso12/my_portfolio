import 'package:flutter/material.dart';
import 'package:my_portfolio/intro_layout/sub_social_end.dart';
import 'package:url_launcher/url_launcher.dart';

import '../less_social.dart';


const String whatsapp = "+2348103186480";
final Uri whatsAppUrl = Uri.parse ("https://wa.me/$whatsapp?text=${Uri.parse("")}");

final Uri gmailUrl = Uri(
  scheme: 'mailto',
  path: 'omotosoadetoso@gmail.com',
  query: 'subject=Explain your needs&body=${Uri.parse("")}',
);
final url = gmailUrl.toString();
final urlPath = Uri.parse(url);

class End extends StatelessWidget {
  const End({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.4,
          height: MediaQuery.sizeOf(context).width * 0.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.sizeOf(context).width * 0.02),
                child: SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.15,
                  height: MediaQuery.sizeOf(context).width * 0.04,
                  child: const FittedBox(
                      fit: BoxFit.fill,
                      child: Text(
                        'GET IN TOUCH',
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontFamily: 'Inder'),
                      )),
                ),
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.35,
                height: MediaQuery.sizeOf(context).width * 0.06,
                child: const FittedBox(
                    fit: BoxFit.fill,
                    child: Text(
                      'As a graduate eager to apply my skill in a professional \nsetting. I am currently seeking opportunities in mobile \napplication development.',
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontFamily: 'Inder'),
                    )),
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.35,
                height: MediaQuery.sizeOf(context).width * 0.1,
                child: const FittedBox(
                    fit: BoxFit.fill,
                    child: Text(
                      'I am open to taking project of any format and am \nalways looking to improve my skill of art, if you have \na project in mind or would like to discuss potential \nemployment opportunities, I would love to hear from \nyou, reach out to me. ->',
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontFamily: 'Inder'),
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.sizeOf(context).width * 0.02),
                child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.35,
                    height: MediaQuery.sizeOf(context).width * 0.25,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/custom2.png')))),
              )
            ],
          ),
        ),
        /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0),
          child: Container(
            width: MediaQuery.sizeOf(context).width * 0.6,
            height: MediaQuery.sizeOf(context).width * 0.48,
            decoration: const BoxDecoration(
                border: BorderDirectional(start: BorderSide())),
            child: Column(children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.sizeOf(context).width * 0.02),
                child: SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.6,
                  height: MediaQuery.sizeOf(context).width * 0.22,
                  child: Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.2,
                        height: MediaQuery.sizeOf(context).width * 0.22,
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top:
                                      MediaQuery.sizeOf(context).width * 0.015),
                              child: SizedBox(
                                width: MediaQuery.sizeOf(context).width * 0.17,
                                height: MediaQuery.sizeOf(context).width * 0.04,
                                child: const FittedBox(
                                    fit: BoxFit.fill,
                                    child: Text(
                                      'Social media',
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontFamily: 'Inder'),
                                    )),
                              ),
                            ),
                            SizedBox(
                                width: MediaQuery.sizeOf(context).width * 0.15,
                                height: MediaQuery.sizeOf(context).width * 0.15,
                                child: const SubSocial())
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.35,
                        height: MediaQuery.sizeOf(context).width * 0.2,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/custom1.png'))),
                      )
                    ],
                  ),
                ),
              ),
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.sizeOf(context).width * 0.02),
                child: const Divider(
                  color: Colors.black,
                  thickness: 1.0,
                ),
              ),
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.6,
                height: MediaQuery.sizeOf(context).width * 0.22,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.sizeOf(context).width * 0.03),
                      child: SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.35,
                        height: MediaQuery.sizeOf(context).width * 0.22,
                        child: Align(
                          alignment: AlignmentDirectional.topStart,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: MediaQuery.sizeOf(context).width *
                                        0.015),
                                child: SizedBox(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.17,
                                  height:
                                      MediaQuery.sizeOf(context).width * 0.04,
                                  child: const FittedBox(
                                      fit: BoxFit.fill,
                                      child: Text(
                                        'Contact',
                                        style: TextStyle(
                                            color: Color.fromARGB(255, 0, 0, 0),
                                            fontFamily: 'Inder'),
                                      )),
                                ),
                              ),
                              SizedBox(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.15,
                                  height:
                                      MediaQuery.sizeOf(context).width * 0.15,
                                  child: const LessSubSocial())
                            ],
                          ),
                        ),
                      ),
                    ),
                    ////////////whatsapp contact me////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.sizeOf(context).width * 0.07),
                      child: SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.2,
                        height: MediaQuery.sizeOf(context).width * 0.2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: ()=> _launchWhatsapp(whatsAppUrl),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.1,
                                height: MediaQuery.sizeOf(context).width * 0.02,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16.0),
                                  color: const Color.fromARGB(255, 35, 41, 61),
                                ),
                                child: Center(
                                  child: SizedBox(
                                      width:
                                         MediaQuery.sizeOf(context).width * 0.06,
                                      height:
                                          MediaQuery.sizeOf(context).width * 0.01,
                                      child: const FittedBox(
                                          fit: BoxFit.fill,
                                          child: Text(
                                            'Contact Me',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Inder'),
                                          )),
                                    ),
                                ),
                              ),
                            ),
                            ////////////gmail contact me////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                            GestureDetector(
                              onTap:  ()=> _launchGmail(urlPath),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.1,
                                height: MediaQuery.sizeOf(context).width * 0.02,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16.0),
                                  color: const Color.fromARGB(255, 35, 41, 61),
                                ),
                                child: Center(
                                  child: SizedBox(
                                      width:
                                         MediaQuery.sizeOf(context).width * 0.06,
                                      height:
                                          MediaQuery.sizeOf(context).width * 0.01,
                                      child: const FittedBox(
                                          fit: BoxFit.fill,
                                          child: Text(
                                            'Contact Me',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Inder'),
                                          )),
                                    ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ]),
          ),
        ),
      ],
    );
  }

  Future<void> _launchWhatsapp(Uri url) async {
    if (!await launchUrl(
      url,
      webOnlyWindowName: "_self"
      )){
      throw Exception('Could not launch $url');
    }
  }

  Future<void> _launchGmail(Uri url) async {
    if (!await launchUrl(
      url,
      webOnlyWindowName: "_self"
      )){
      throw Exception('Could not launch $url');
    }
  }

}
