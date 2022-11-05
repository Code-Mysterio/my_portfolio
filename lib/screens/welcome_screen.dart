import 'package:code_mysterio_portfolio/custom_widgets/buttons/about_me_button.dart';
import 'package:code_mysterio_portfolio/custom_widgets/buttons/my_work_button.dart';
import 'package:code_mysterio_portfolio/screens/work_ui/work_overview.dart';
import 'package:flutter/material.dart';
import 'profile_ui/profile_overview.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/Abdul 05.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 430,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                      color: Colors.black.withOpacity(0.95),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Hi, I\'m \nAbdullateef!',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                              color: Colors.white,
                            ),
                          ),
                          const Text(
                            'Mobile/Flutter Developer\nUsername: Code_Mysterio',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 13.0,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 30.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AboutMeButton(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const ProfileOverviewPage(),
                                    ),
                                  );
                                },
                                data: 'About\nMe',
                                textAlign: TextAlign.end,
                              ),
                              const Spacer(),
                              MyWorkButton(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const ProjectOverviewPage(),
                                    ),
                                  );
                                },
                                data: 'My\nWork',
                                textAlign: TextAlign.start,
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const Divider(
                            thickness: 3.0,
                            indent: 80,
                            endIndent: 90,
                            color: Colors.amber,
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          const Center(
                            child: Text(
                              'Hello World! I build mobile Application using flutter.\nI want to share with you some of my works.\nI hope you enjoy them',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Ubuntu',
                                fontWeight: FontWeight.w400,
                                fontSize: 11.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
