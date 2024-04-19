import 'package:flutter/material.dart';
import 'package:kenilworth_web/DesktopComponents/custom_topic.dart';
import 'package:kenilworth_web/DesktopComponents/discover_button.dart';

import '../DesktopComponents/custom_appbar.dart';
import '../colors.dart';

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

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        selectedItemIndex: _selectedItemIndex,
        onItemSelected: _onItemSelect,
      ),
      body: SingleChildScrollView(
        child: Column(
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
                  const SizedBox(height: 40),
                  const Text(
                    'JOIN WITH US FOR YOUR \nPURPOSE DRIVEN \nDIGITAL TRANSFORMATION',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 48,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  const SizedBox(
                      height:
                          40), // Space between the main text and the company name
                  ShaderMask(
                    shaderCallback: (bounds) => const LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Color(0xFFF3F3F3), Color(0xFF00A4DD)],
                      tileMode: TileMode.mirror,
                    ).createShader(bounds),
                    blendMode: BlendMode
                        .srcIn, // This blend mode applies the shader to the text color.
                    child: const Text(
                      'KENILWORTH',
                      style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  const SizedBox(height: 100),

                  const Padding(
                    padding: EdgeInsets.all(20), // Footer padding
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
            const CustomTopic(topic: "LATEST UPDATES", color: Colors.black),
            const SizedBox(height: 500),
            const CustomTopic(
                topic: "PRODUCTS AND SERVICES", color: Colors.black),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: SizedBox(
                    height: 350,
                    child: Center(child: Image.asset('images/pc.gif',height: 350,)),
                  ),
                ),
                Expanded(
                    flex: 7,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 80.0, right: 80),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Text(
                              'Digital Transformation Solutions',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                  fontSize: 24),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              'Tired of off-the-shelf solutions that fall short of your unique needs?',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.tealBlue,
                                  fontSize: 20),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Text(
                              "Frustrated by rigid development processes that don't adapt to your changing landscape? At Kenilworth, we believe digital transformation should be as dynamic and adaptable as your business itself. we specialize in providing purpose-driven digital transformation solutions tailored to meet your specific needs.",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                          ),
                          const DiscoverButton(),
                        ],
                      ),
                    )),
              ],
            ),
            Row(
              children: [
                Expanded(
                    flex: 7,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 80.0, right: 80),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Text(
                              'Secure Business Solutions',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                  fontSize: 24),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              'Your business to thrive in a secure digital landscape',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.tealBlue,
                                  fontSize: 20),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Text(
                              "In an era where the digital landscape is evolving at an unprecedented pace, safeguarding your business assets has never been more crucial. Our mission is to empower businesses with secure, reliable, and scalable solutions that not only meet their current needs but also anticipate and shape future requirements.",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                          ),
                          const DiscoverButton(),
                        ],
                      ),
                    )),
                Expanded(
                  flex: 3,
                  child: SizedBox(
                    height: 350,
                    child: Center(child: Image.asset('images/secGif.gif',height: 300,)),
                  ),
                ),
              ],
            ),

            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: SizedBox(
                    height: 300,
                    child: Center(child: Image.asset('images/thirdGif.gif',height: 250,)),
                  ),
                ),
                Expanded(
                    flex: 7,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 80.0, right: 80),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Text(
                              'Agri-Tech Solutions',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                  fontSize: 24),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              'Holistic digital platform and cutting-edge Agriculture Drones.',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.tealBlue,
                                  fontSize: 20),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Text(
                              "In the heart of the agricultural landscape, Kenilworth stands as a beacon of innovation, transforming the way you perceive and manage the entire agriculture value chain. We take pride in being the only company that provides a holistic digital platform that seamlessly connects every link in the value chain, from farmer to consumer, coupled with state-of-the-art Agriculture Drones",
                              style:
                              TextStyle(color: Colors.black, fontSize: 16),
                            ),
                          ),
                          const DiscoverButton(),
                        ],
                      ),
                    )),
              ],
            ),

            Row(
              children: [
                Expanded(
                    flex: 7,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 80.0, right: 80),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Text(
                              'UAV/Drone Technology',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                  fontSize: 24),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              'Premier drone fleet, expert pilots, aerial precision, unmatched power.',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.tealBlue,
                                  fontSize: 20),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Text(
                              "In the ever-evolving world of drone technology, scale and expertise are no longer luxuries, they're necessities. At Kenilworth International, we don't just offer drones, we offer unmatched power and precision through the country's largest fleet of cutting-edge drones and 100s of the most expertly trained pilot squad, empowering you to conquer any aerial challenge.",
                              style:
                              TextStyle(color: Colors.black, fontSize: 16),
                            ),
                          ),
                          const DiscoverButton(),
                        ],
                      ),
                    )),
                Expanded(
                  flex: 3,
                  child: SizedBox(
                    height: 350,
                    child: Center(child: Image.asset('images/forthGif.gif',height: 300,),)
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
