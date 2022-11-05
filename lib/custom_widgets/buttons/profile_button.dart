import 'package:flutter/material.dart';

class ProfileButton extends StatelessWidget {
  final VoidCallback onTap;
  final String data;
  final IconData icons;
  const ProfileButton(
      {Key? key, required this.onTap, required this.data, required this.icons})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 150.0,
        width: 150.0,
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
                color: Colors.black54,
                blurRadius: 3,
                spreadRadius: 1,
                offset: Offset(2.5, 2)),
          ],
          borderRadius: BorderRadius.circular(16.0),
          color: Colors.amber,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icons,
              color: Colors.white,
              size: 70,
            ),
            // SizedBox(height: 1,),
            Text(
              data,
              style: const TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
