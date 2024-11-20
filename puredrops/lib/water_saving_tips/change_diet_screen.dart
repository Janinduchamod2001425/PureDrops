import 'package:Puredrops/custom_navigation_bar.dart';
import 'package:Puredrops/get_started_screen.dart';
import 'package:Puredrops/home_screen.dart';
import 'package:Puredrops/notifications_screen.dart';
import 'package:Puredrops/settings_screen.dart';
import 'package:flutter/material.dart';

class ChangeDietScreen extends StatefulWidget {
  const ChangeDietScreen({super.key});

  @override
  State<ChangeDietScreen> createState() => _ChangeDietScreenState();
}

class _ChangeDietScreenState extends State<ChangeDietScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      // Handle navigation based on selected index
      switch (index) {
        case 0:
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const HomeScreen()),
          );
          break;
        case 1:
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const GetStartedScreen()),
          );
          break;
        case 2:
          // Navigate to Map
          break;
        case 3:
          // Navigate to Profile
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/Water_Saving_Tips.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: const Color(0xff90E0EF),
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: const Icon(
                            Icons.arrow_back_ios_new,
                            color: Color(0xFF02055A),
                            size: 24,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const NotificationsScreen(),
                            ),
                          ); // Navigate to Notifications screen
                        },
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: const Icon(
                            Icons.notifications,
                            color: Color(0xFF02055A),
                            size: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Change Your Diet',
                            style: TextStyle(
                              fontSize: 34,
                              fontWeight: FontWeight.w800,
                              fontFamily: 'Baloo 2',
                              color: Color(0xFF000000),
                            ),
                          ),
                          // Sub title
                          Padding(
                            padding: EdgeInsets.only(top: 1),
                            child: Text(
                              'How to Save Water',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Outfit',
                                color: Color(0xFF757575),
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 7),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SettingsScreen(),
                              ),
                            ); // Navigate to Settings screen
                          },
                          child: Transform.translate(
                            offset: const Offset(
                                0, -10), // Move the icon 10 pixels up
                            child: const Icon(
                              Icons.settings,
                              color: Colors.black,
                              size: 36,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  // Add 6 Tips cards
                  Expanded(
                      child: GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: (180 / 189),
                    children: [
                      // Card 1
                      buildTipCard(
                        context,
                        imagePath: 'assets/tips/tip1.png',
                        title: 'Change Your Diet',
                        onPressed: () {
                          _showInstructionsDialog(
                            context,
                            'Change Your Diet',
                            'Detailed instructions on how to change your diet to save water.',
                          );
                        },
                      ),

                      // Card 2
                      buildTipCard(
                        context,
                        imagePath: 'assets/tips/tip2.png',
                        title: 'Cut Indoor Water Use',
                        onPressed: () {
                          _showInstructionsDialog(
                            context,
                            'Cut Indoor Water Use',
                            'Detailed instructions on how to cut indoor water use.',
                          );
                        },
                      ),

                      // Card 3
                      buildTipCard(
                        context,
                        imagePath: 'assets/tips/tip3.png',
                        title: 'Use Less Water Outdoors',
                        onPressed: () {
                          _showInstructionsDialog(
                            context,
                            'Cut Indoor Water Use',
                            'Detailed instructions on how to cut indoor water use.',
                          );
                        },
                      ),

                      // Card 4
                      buildTipCard(
                        context,
                        imagePath: 'assets/tips/tip4.png',
                        title: 'Save Energy, Save Water',
                        onPressed: () {
                          _showInstructionsDialog(
                            context,
                            'Cut Indoor Water Use',
                            'Detailed instructions on how to cut indoor water use.',
                          );
                        },
                      ),

                      // Card 5
                      buildTipCard(
                        context,
                        imagePath: 'assets/tips/tip5.png',
                        title: 'Change Buying Habits',
                        onPressed: () {
                          _showInstructionsDialog(
                            context,
                            'Cut Indoor Water Use',
                            'Detailed instructions on how to cut indoor water use.',
                          );
                        },
                      ),

                      // Card 6
                      buildTipCard(
                        context,
                        imagePath: 'assets/tips/tip6.png',
                        title: 'Dive Deeper',
                        onPressed: () {
                          _showInstructionsDialog(
                            context,
                            'Cut Indoor Water Use',
                            'Detailed instructions on how to cut indoor water use.',
                          );
                        },
                      ),
                    ],
                  ))

                  // ------
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomBottomNavBar(
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildTipCard(
  BuildContext context, {
  required String imagePath,
  required String title,
  required VoidCallback onPressed,
}) {
  return Container(
    width: 180,
    height: 189,
    decoration: BoxDecoration(
      color: const Color(0xFFCAF0F8),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Image on the left
              Image.asset(
                imagePath,
                width: 90,
                height: 70,
              ),

              // "See More" button on the right
              Expanded(
                child: Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: onPressed,
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: const Color(0xFF90E0EF),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: const Icon(
                        Icons.more_horiz,
                        size: 16,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 8),
          // Title below the image

          Text(
            title,
            style: const TextStyle(
              fontFamily: 'Baloo 2',
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),

          const SizedBox(height: 6),
        ],
      ),
    ),
  );
}

void _showInstructionsDialog(
    BuildContext context, String title, String instructions) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title),
        content: Text(instructions),
        actions: [
          TextButton(
            child: const Text('Close'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
