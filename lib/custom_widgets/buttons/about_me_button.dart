import 'package:flutter/material.dart';

class AboutMeButton extends StatelessWidget {
  final VoidCallback onTap;
  final String data;
  final TextAlign textAlign;
  const AboutMeButton({
    Key? key,
    required this.onTap,
    required this.data,
    required this.textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: 120.0,
            width: 200.0,
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Material(
                  color: Colors.transparent,
                  child: Ink(
                    decoration: const ShapeDecoration(
                      color: Colors.amber,
                      shape: CircleBorder(),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                Text(
                  data,
                  textAlign: textAlign,
                  style: const TextStyle(
                    fontFamily: 'Ubuntu',
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
