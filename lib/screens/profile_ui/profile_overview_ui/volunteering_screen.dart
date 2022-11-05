import 'package:flutter/material.dart';

class VolunteeringPage extends StatelessWidget {
  const VolunteeringPage({Key? key}) : super(key: key);

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
          title: const Text('Volunteering Experience'),
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: [
            Row(
              children: const [
                Icon(
                  Icons.engineering,
                  size: 22.0,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  'Volunteering',
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
                  ListTile(
                    leading: Icon(Icons.code),
                    tileColor: Colors.white70,
                    title: Text('Lead, Google DSC ABU, Zaria'),
                    subtitle: Text(
                      'Served as the lead to help manage the developer community on campus',
                      style: TextStyle(fontSize: 12),
                    ),
                    trailing: Text('2021-2022'),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  ListTile(
                    leading: Icon(Icons.code),
                    tileColor: Colors.white70,
                    title: Text(
                        'Lead - Mobile Team | Flutter Developer , Google DSC ABU, Zaria'),
                    subtitle: Text(
                      ' I hosted and managed physical and virtual events for the community flutter circle',
                      style: TextStyle(fontSize: 12),
                    ),
                    trailing: Text('2021-2022'),
                  ),
                ]).toList(),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
