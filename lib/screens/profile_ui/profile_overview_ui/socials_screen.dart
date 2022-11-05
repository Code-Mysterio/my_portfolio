import 'package:flutter/material.dart';

class SocialsPage extends StatelessWidget {
  const SocialsPage({Key? key}) : super(key: key);

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
          title: const Text('Socials'),
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: [
            Row(
              children: const [
                Icon(
                  Icons.add_comment_rounded,
                  size: 22.0,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  'Let\'s connect online',
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
                children: ListTile.divideTiles(context: context, tiles: [
                  ListTile(
                    onTap: () {
                      print('Github is tapped');
                    },
                    leading: Image.asset('images/social/github.png'),
                    tileColor: Colors.white70,
                    title: const Text('GitHub'),
                    subtitle: const Text(
                      '@olaabdul',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  ListTile(
                    onTap: () {
                      print('LinkedIn is tapped');
                    },
                    leading: Image.asset('images/social/linkedin.png'),
                    tileColor: Colors.white70,
                    title: const Text('LinkedIn'),
                    subtitle: const Text(
                      '@abdulola001',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  ListTile(
                    onTap: () {
                      print('Twitter is tapped');
                    },
                    leading: Image.asset('images/social/twitter.png'),
                    tileColor: Colors.white70,
                    title: const Text('Twitter'),
                    subtitle: const Text(
                      '@code_mysterio',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  ListTile(
                    onTap: () {
                      print('Email is tapped');
                    },
                    leading: Image.asset('images/social/email.png'),
                    tileColor: Colors.white70,
                    title: const Text('E-mail'),
                    subtitle: const Text(
                      'abdulyoung78@gmail.com',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  ListTile(
                    onTap: () {
                      print('WhatsApp is tapped');
                    },
                    leading: Image.asset('images/social/whatsapp.png'),
                    tileColor: Colors.white70,
                    title: const Text('WhatsApp'),
                    subtitle: const Text(
                      '+234-909-585-5552',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  ListTile(
                    onTap: () {
                      print('Discord is tapped');
                    },
                    leading: Image.asset('images/social/discord.png'),
                    tileColor: Colors.white70,
                    title: const Text('Discord'),
                    subtitle: const Text(
                      '@phantom#5363',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  ListTile(
                    onTap: () {
                      print('Telegram is tapped');
                    },
                    leading: Image.asset('images/social/telegram.png'),
                    tileColor: Colors.white70,
                    title: const Text('Telegram'),
                    subtitle: const Text(
                      '@Code_Mysterio',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  const SizedBox(
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
