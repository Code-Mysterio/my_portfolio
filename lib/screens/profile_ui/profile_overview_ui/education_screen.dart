import 'package:flutter/material.dart';

class EducationPage extends StatelessWidget {
  const EducationPage({Key? key}) : super(key: key);

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
          title: const Text('Education'),
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: [
            Row(
              children: const [
                Icon(
                  Icons.school,
                  size: 22.0,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  'Education',
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
                children: ListTile.divideTiles(
                    //          <-- ListTile.divideTiles
                    context: context,
                    tiles: const [
                      ListTile(
                        leading: Icon(
                          Icons.stars,
                          color: Colors.black,
                        ),
                        tileColor: Colors.white70,
                        title: Text('Student, Ahmadu Bello University, Zaria'),
                        subtitle: Text(
                          'Bachelor of Education, B.Sc(Ed) - in view',
                          style: TextStyle(fontSize: 12),
                        ),
                        trailing: Text('2018 -2023'),
                      ),
                      SizedBox(
                        height: 5,
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
