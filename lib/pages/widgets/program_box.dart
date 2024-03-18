import 'package:assignment_2/data/model/program_model.dart';
import 'package:flutter/material.dart';

class ProgramBox extends StatelessWidget {
  final ProgramModel programModel;
  final bool isEvent;
  final bool isLocked;
  const ProgramBox(
      {super.key,
      required this.programModel,
      this.isEvent = false,
      this.isLocked = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: const [
              BoxShadow(
                  color: Color.fromARGB(255, 186, 186, 186),
                  blurRadius: 5,
                  spreadRadius: 1),
            ]),
        height: 280,
        width: 242,
        child: Column(
          children: [
            Container(
              height: 140,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(programModel.image),
                      fit: BoxFit.cover)),
            ),
            Container(
              width: 242,
              padding: const EdgeInsets.fromLTRB(15, 18, 15, 18),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    programModel.tag,
                    style: const TextStyle(
                        color: Color.fromARGB(225, 89, 139, 237)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    programModel.title,
                    overflow: TextOverflow.fade,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(programModel.others),
                      isEvent
                          ? Container(
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              height: 24,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blue),
                                  borderRadius: BorderRadius.circular(24)),
                              child: const Center(
                                  child: Text(
                                'Book',
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 12),
                              )),
                            )
                          : isLocked
                              ? const Icon(
                                  Icons.lock_outline_rounded,
                                  color: Colors.grey,
                                )
                              : Container()
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
