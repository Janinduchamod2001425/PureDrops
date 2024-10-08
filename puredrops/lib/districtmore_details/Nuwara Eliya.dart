import 'package:flutter/material.dart';
import 'package:Puredrops/custom_navigation_bar.dart';

class NuwaraEliya extends StatefulWidget {
  const NuwaraEliya({super.key});

  @override
  _NuwaraEliyaState createState() => _NuwaraEliyaState();
}

class _NuwaraEliyaState extends State<NuwaraEliya> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/Usage_Result_Screen.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Top bar with back and notification icons
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
                          // Handle notifications tap
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
                  const SizedBox(height: 30),
                  // Heading and subheading
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'District Details',
                            style: TextStyle(
                              fontSize: 34,
                              fontWeight: FontWeight.w800,
                              fontFamily: 'Baloo 2',
                              color: Color(0xFF000000),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 1),
                            child: Text(
                              'Detailed Information',
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
                      GestureDetector(
                        onTap: () {
                          // Navigate to settings screen
                        },
                        child: const Icon(
                          Icons.settings,
                          color: Colors.black,
                          size: 36,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // District Name and Image
                            const Text(
                              'District: Nuwara Eliya',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Image.asset(
                                'assets/district/Nuwara Eliya.jpg',
                                width: double.infinity,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 20),

                            // Combined Card with Location, Current Issues, and Urgency Summary
                            Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Location: Central Province',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF02055A),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'Population: 100,000 people',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF02055A),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Households in Need of Clean Water: 750',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF02055A),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'Current Issues:',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF02055A),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      '• Seasonal water shortages due to tourism',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF02055A),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      '• Pollution from agricultural runoff',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF02055A),
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      'Urgency Summary',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF02055A),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'Urgency Level: Medium',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF02055A),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Immediate Action: Water resource management and education',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF02055A),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      
    );
  }
}
