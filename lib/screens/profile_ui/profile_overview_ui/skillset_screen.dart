import 'package:code_mysterio_portfolio/custom_widgets/buttons/list_tile.dart';
import 'package:flutter/material.dart';

class SkillSetPage extends StatelessWidget {
  const SkillSetPage({Key? key}) : super(key: key);

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
          title: const Text('My SkillSet'),
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: [
            Row(
              children: const [
                Icon(
                  Icons.handyman,
                  size: 22.0,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  'Skills',
                  style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView(
                children: ListTile.divideTiles(context: context, tiles: const [
                  CustomListTile(data: 'Flutter'),
                  CustomListTile(data: 'Mobile Application Development'),
                  CustomListTile(data: 'Googling'),
                  CustomListTile(data: 'Firebase'),
                  CustomListTile(data: 'GIT'),
                  CustomListTile(data: 'TeamWork'),
                  CustomListTile(data: 'Communication'),
                  CustomListTile(data: 'Problem Solving'),
                  CustomListTile(data: 'Analytic Skills'),
                  CustomListTile(data: 'Leadership'),
                  CustomListTile(data: 'Android Studio'),
                  CustomListTile(data: 'Visual Studio Code'),
                  CustomListTile(data: 'Figma'),
                ]).toList(),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
