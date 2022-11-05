import 'package:flutter/material.dart';

class ProjectDetailsPage extends StatefulWidget {
  const ProjectDetailsPage({Key? key}) : super(key: key);

  @override
  State<ProjectDetailsPage> createState() => _ProjectDetailsPageState();
}

class _ProjectDetailsPageState extends State<ProjectDetailsPage> {
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
          title: const Text('Project Details'),
          backgroundColor: Colors.black,
        ),
        body: const Padding(
          padding: EdgeInsets.all(20.0),
          child: Center(
            child: Text(
              'I will be uploading this project details in a bit ',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
