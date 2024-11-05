import 'package:flutter/material.dart';

class RightIcons extends StatelessWidget {
  const RightIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.teal[300],
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                    color: Colors.teal.shade500,
                    spreadRadius: 2,
                    blurRadius: 15),
              ]),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              size: 20,
              color: Colors.white,
            ),
          ),
        ),
      const SizedBox(
          width: 10,
        ),
       Container(
          decoration: BoxDecoration(
              color: Colors.teal[300],
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                    color: Colors.teal.shade500,
                    spreadRadius: 2,
                    blurRadius: 10),
              ]),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.notification_add_outlined,
              size: 20,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(width: 10,),
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.teal[300],
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                      color: Colors.teal.shade300,
                      spreadRadius: 2,
                      blurRadius: 15),
                ]),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.logout,
                size: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
      const SizedBox(width: 15,)
      ],
    );
  }
}
