import 'package:flutter/material.dart';


class IntroCard extends StatelessWidget {
  const IntroCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: AlignmentDirectional.topStart,
     children: [
      // Start stacked containers
      Padding(
        padding: const EdgeInsets.only(left:10 , top: 10),
        child: Container(
          width: MediaQuery.sizeOf(context).width * 0.51,
          height: MediaQuery.sizeOf(context).width * 0.38,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 127, 145, 205),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left:5 , top: 5),
        child: Container(
          width: MediaQuery.sizeOf(context).width * 0.51,
          height: MediaQuery.sizeOf(context).width * 0.38,
          decoration: const BoxDecoration(
            color: Color.fromARGB(
              255,
              107, 123, 175
            ),

          ),
        ),
      ),
      
      Container(
        width: MediaQuery.sizeOf(context).width * 0.51,
        height: MediaQuery.sizeOf(context).width * 0.38,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 35, 41, 61),
        ),
      ),
      // end stacked container


      // details involved container
      Container(
        alignment: Alignment.center,
        width: MediaQuery.sizeOf(context).width * 0.53,
        height: MediaQuery.sizeOf(context).width * 0.4,
        decoration: const BoxDecoration(
          color: Colors.transparent
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
        width: MediaQuery.sizeOf(context).width * 0.004,
        height: MediaQuery.sizeOf(context).width * 0.25,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
      ),

      // text childern card

       Padding(
         padding: EdgeInsets.only(left: MediaQuery.sizeOf(context).width * 0.02, right:MediaQuery.sizeOf(context).width * 0.02),
         child: Stack(
          alignment: AlignmentDirectional.topStart,
          children: [
       
            SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.05,
            height: MediaQuery.sizeOf(context).width * 0.02,
            child: const FittedBox(
              fit: BoxFit.fill,
              child: Text('Meet your', 
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Inder'
                  ),)
                  ),
            ),
       
            
            Padding(
              padding: EdgeInsets.only(top: MediaQuery.sizeOf(context).width * 0.01, left: MediaQuery.sizeOf(context).width * 0.042),
              child: SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.22,
              height: MediaQuery.sizeOf(context).width * 0.06,
              child: const FittedBox(
                fit: BoxFit.fill,
                child: Text('Mobile Application', 
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                      fontFamily: 'Inder'
                    ),)
                    ),
              ),
            ),
       
             Padding(
          padding: EdgeInsets.only(top: MediaQuery.sizeOf(context).width * 0.04, left: MediaQuery.sizeOf(context).width * 0.2),
          child: SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.23,
            height: MediaQuery.sizeOf(context).width * 0.1,
            child: const FittedBox(
              fit: BoxFit.fill,
              child: Text(
                'Developer',
                style: TextStyle(
              color: Colors.white,
              fontSize: 64,
              fontFamily: 'Inder')
              ),
            ),
          ),
             )  
          ],
             ),
       )
      
          ]
          ),
      ),
    ],
      );
  }
}