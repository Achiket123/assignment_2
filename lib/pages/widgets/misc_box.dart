import 'package:flutter/material.dart';

class MiscBoxes extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function() onPressed;
  const MiscBoxes(
      {super.key,
      required this.text,
      required this.icon,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width / 2 - 30),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            border: Border.all(color: const Color.fromARGB(225, 89, 139, 237))),
        child: ElevatedButton(
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.transparent),
              shadowColor: MaterialStatePropertyAll(Colors.transparent)),
          onPressed: onPressed,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Icon(
                  icon,
                  color: const Color.fromARGB(225, 89, 139, 237),
                ),
              ),
              Text(
                text,
                style:
                    const TextStyle(color: Color.fromARGB(225, 89, 139, 237)),
              )
            ],
          ),
        ));
  }
}
