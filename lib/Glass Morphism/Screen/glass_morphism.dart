import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GlassMorphism extends StatelessWidget {
  const GlassMorphism({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
                height: height,
                width: width,
                child: Image.asset(
                  "Assets/bg.png",
                  fit: BoxFit.cover,
                )),
            Center(
              child: ClipRect(
                child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaY: 5,
                      sigmaX: 5,
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      width: 801,
                      height: 508,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 1.50, color: Color(0xFFCDC8C8)),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Colors.white10,
                            blurRadius: 4,
                            offset: Offset(1, 4),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Center(
                        child: SizedBox(
                          width: 801,
                          height: 508,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 70),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Introduction",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Portfolio",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                    Text(
                                      "About Me",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                    Text(
                                      "Contact Me",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 50, left: 30),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 20),
                                      child: Container(
                                        height: 300,
                                        width: 300,
                                        decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            border: Border.all(
                                                color: Colors.white, width: 2),
                                            shape: BoxShape.circle,
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                    "Assets/boy.png"))),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 50, bottom: 80),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                           Text(
                                            "Hello!,",
                                            style: GoogleFonts.jetBrainsMono(
                                                fontSize: 30,
                                                fontWeight: FontWeight.w100,
                                                color: Colors.white),
                                          ),
                                           Text(
                                            "This is Aayush Patel",
                                            style: GoogleFonts.jetBrainsMono(
                                                fontSize: 30,
                                                fontWeight: FontWeight.w100,
                                                color: Colors.white),
                                          ),
                                           Text("Flutter Developer",
                                              style: GoogleFonts.jetBrainsMono(
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.w100,
                                                  color: Colors.white)),
                                          SizedBox(height: 80,),
                                          SizedBox(
                                            height: 40,
                                              child: Image.asset(
                                                  "Assets/button.png"))
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
