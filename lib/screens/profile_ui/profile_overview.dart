import 'package:code_mysterio_portfolio/custom_widgets/buttons/profile_button.dart';
import 'package:flutter/material.dart';
import 'profile_overview_ui/about_me_page.dart';
import 'profile_overview_ui/education_screen.dart';
import 'profile_overview_ui/experience_screen.dart';
import 'profile_overview_ui/skillset_screen.dart';
import 'profile_overview_ui/socials_screen.dart';
import 'profile_overview_ui/volunteering_screen.dart';

class ProfileOverviewPage extends StatefulWidget {
  const ProfileOverviewPage({Key? key}) : super(key: key);

  @override
  State<ProfileOverviewPage> createState() => _ProfileOverviewPageState();
}

class _ProfileOverviewPageState extends State<ProfileOverviewPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.amber,
            icon: const Icon(
              Icons.arrow_back_ios,
            ),
          ),
          title: const Text('Profile Overview'),
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                const CircleAvatar(
                  radius: 100,
                  backgroundColor: Colors.black,
                  backgroundImage: AssetImage('images/abdulola.jpg'),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  'Abdullateef O.\nSarafadeen',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Flutter Developer',
                  style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontSize: 12.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ProfileButton(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const AboutMePage()),
                              );
                            },
                            data: 'Bio',
                            icons: Icons.account_box_rounded,
                          ),
                          const SizedBox(
                            width: 70,
                          ),
                          ProfileButton(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ExperiencePage()),
                              );
                            },
                            data: 'Experience',
                            icons: Icons.work_history,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ProfileButton(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SkillSetPage()),
                              );
                            },
                            data: 'SkillSet',
                            icons: Icons.handyman,
                          ),
                          const SizedBox(
                            width: 70,
                          ),
                          ProfileButton(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const VolunteeringPage()),
                              );
                            },
                            data: 'Volunteering',
                            icons: Icons.engineering,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ProfileButton(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const EducationPage()),
                              );
                            },
                            data: 'Education',
                            icons: Icons.school,
                          ),
                          const SizedBox(
                            width: 70,
                          ),
                          ProfileButton(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SocialsPage()),
                              );
                            },
                            data: 'Socials',
                            icons: Icons.contact_mail_rounded,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
