import 'package:code_mysterio_portfolio/custom_widgets/buttons/profile_button.dart';
import 'package:code_mysterio_portfolio/screens/work_ui/projects/project_details.dart';
import 'package:flutter/material.dart';

class ProjectOverviewPage extends StatefulWidget {
  const ProjectOverviewPage({Key? key}) : super(key: key);

  @override
  State<ProjectOverviewPage> createState() => _ProjectOverviewPageState();
}

class _ProjectOverviewPageState extends State<ProjectOverviewPage> {
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
          title: const Text('Work Overview'),
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.android,
                          size: 22.0,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          'Lets create magic together',
                          style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    const Text(
                      'Discover projects I have work on',
                      style: TextStyle(
                          fontFamily: 'Ubuntu',
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
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
                                    builder: (context) =>
                                        const ProjectDetailsPage()),
                              );
                            },
                            data: 'Weather X',
                            icons: Icons.android,
                          ),
                          const SizedBox(width: 50.0),
                          ProfileButton(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ProjectDetailsPage()),
                              );
                            },
                            data: 'Woo Dog',
                            icons: Icons.android,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ProfileButton(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ProjectDetailsPage()),
                              );
                            },
                            data: 'Project Learn',
                            icons: Icons.android,
                          ),
                          const SizedBox(
                            width: 50.0,
                          ),
                          ProfileButton(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ProjectDetailsPage()),
                              );
                            },
                            data: 'Time Tracker',
                            icons: Icons.android,
                          ),
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
