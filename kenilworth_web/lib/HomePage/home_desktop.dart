import 'package:flutter/material.dart';

import '../DesktopComponents/custom_appbar.dart';

class HomeDesktop extends StatefulWidget {
  const HomeDesktop({super.key});

  @override
  State<HomeDesktop> createState() => _HomeDesktopState();
}

class _HomeDesktopState extends State<HomeDesktop> {
  int _selectedItemIndex = 0;

  void _onItemSelect(int index) {
    setState(() {
      _selectedItemIndex = index;
    });
    // TODO: Add your item selection logic here (e.g., navigate to a different page)
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        selectedItemIndex: _selectedItemIndex,
        onItemSelected: _onItemSelect,
      ),
      body: Column(
        children: [
          Container(
              height: 600,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Color(0xFF000000), Color(0xFF016B90)],
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height:
                      40),
                  Text(
                    'JOIN WITH US FOR YOUR \nPURPOSE DRIVEN \nDIGITAL TRANSFORMATION',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 48,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  SizedBox(
                      height:
                          40), // Space between the main text and the company name
                  ShaderMask(
                    shaderCallback: (bounds) => LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Color(0xFFF3F3F3), Color(0xFF00A4DD)],
                      tileMode: TileMode.mirror,
                    ).createShader(bounds),
                    blendMode: BlendMode.srcIn, // This blend mode applies the shader to the text color.
                    child: Text(
                      'KENILWORTH',
                      style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),


                  SizedBox(
                      height:
                      100),

                  Padding(
                    padding: const EdgeInsets.all(20), // Footer padding
                    child: Text(
                      'USING DISRUPTIVE TECHNOLOGIES AND UNVEILING THE ENDLESS POSSIBILITIES TO ACHIEVE OUR CLIENT’S WILDEST EXPECTATIONS',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
          ),
        ],
      ),
    );
  }
}
