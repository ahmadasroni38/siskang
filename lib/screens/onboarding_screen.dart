import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  // content state
  int contentState = 0;

  // list of title
  List<String> titles = [
    'Let us take care of you',
    'Always use a mask',
    'Work from home',
  ];

  // list of description
  List<String> descriptions = [
    'We are here to take care of you \nwith pleasure. besides that we will \nmonitor your condition 24/Day',
    'always use a mask when you want\nto travel and keep your\nbody immunity',
    'to avoid the spread of covid 19. \nyou can do office work from home and\nalways be close to your family',
  ];

  // list of images
  List<String> images = [
    'assets/illustration1.png',
    'assets/illustration2.png',
    'assets/illustration3.png',
  ];

  // get title
  String getTitle(int contentState) {
    if (contentState == 0) {
      return titles[0];
    } else if (contentState == 1) {
      return titles[1];
    } else {
      return titles[2];
    }
  }

  // get description
  String getDescription(int contentState) {
    if (contentState == 0) {
      return descriptions[0];
    } else if (contentState == 1) {
      return descriptions[1];
    } else {
      return descriptions[2];
    }
  }

  // get image
  String getImage(int contentState) {
    if (contentState == 0) {
      return images[0];
    } else if (contentState == 1) {
      return images[1];
    } else {
      return images[2];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffECF8FF),
      body: SafeArea(
        child: Stack(
          children: [
            // Image Illustration
            Container(
              margin: const EdgeInsets.only(top: 24.0),
              child: Image(
                height: 640.0,
                image: AssetImage(getImage(contentState)),
              ),
            ),
            // Top Components
            Container(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  contentState != 0
                      ? GestureDetector(
                          onTap: () {
                            setState(() {
                              contentState--;
                              print(contentState);
                            });
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            size: 18.0,
                          ),
                        )
                      : SizedBox(),
                  contentState != 2
                      ? GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/sign-in');
                          },
                          child: Text(
                            'Skip',
                            style: GoogleFonts.poppins(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        )
                      : SizedBox(),
                ],
              ),
            ),
            // Content
            Align(
              alignment: FractionalOffset.bottomCenter,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                child: Container(
                  width: double.infinity,
                  color: Color(0xffFBFDFF),
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Title
                      Text(
                        getTitle(contentState),
                        style: GoogleFonts.poppins(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      // Description
                      Text(
                        getDescription(contentState),
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          color: Color(0xff878F95),
                          letterSpacing: 2.0,
                          height: 2.0,
                        ),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      // Bottom Components
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Indicator
                          Row(
                            children: [
                              // 0
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30.0),
                                child: Container(
                                  height: 4.0,
                                  width: contentState == 0 ? 18.0 : 12.0,
                                  color: contentState == 0
                                      ? Color(0xff6686D8)
                                      : Color(0xffCBD6F3),
                                ),
                              ),
                              SizedBox(
                                width: 4.0,
                              ),
                              // 1
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30.0),
                                child: Container(
                                  height: 4.0,
                                  width: contentState == 1 ? 18.0 : 12.0,
                                  color: contentState == 1
                                      ? Color(0xff6686D8)
                                      : Color(0xffCBD6F3),
                                ),
                              ),
                              SizedBox(
                                width: 4.0,
                              ),
                              // 2
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30.0),
                                child: Container(
                                  height: 4.0,
                                  width: contentState == 2 ? 18.0 : 12.0,
                                  color: contentState == 2
                                      ? Color(0xff6686D8)
                                      : Color(0xffCBD6F3),
                                ),
                              ),
                            ],
                          ),
                          // Button Next
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (contentState == 2) {
                                  Navigator.pushNamed(context, '/sign-in');
                                }
                                if (contentState <= 2) {
                                  contentState++;
                                }
                                print(contentState);
                              });
                            },
                            child: Container(
                              child: Image(
                                height: 40.0,
                                width: 40.0,
                                image: AssetImage('assets/next.png'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
