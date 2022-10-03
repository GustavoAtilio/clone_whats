// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ChartCustom extends StatelessWidget {
  final String name;
  final int countMessage;
  final String hour;
  const ChartCustom({
    Key? key,
    required this.name,
    required this.countMessage,
    required this.hour,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: const EdgeInsets.only(left: 15, top: 20),
        child: Row(
          children: [
            const CircleAvatar(),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  '+55 9967354: kkkkk',
                  style: TextStyle(
                    color: Color.fromARGB(255, 182, 185, 166),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Expanded(child: Container()),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Column(
                children: [
                  Text(
                    hour,
                    style: const TextStyle(
                      color: Colors.green,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    height: 20,
                    width: 35,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                        child: Text(
                      countMessage.toString(),
                      style: const TextStyle(
                        color: Color.fromARGB(255, 182, 185, 166),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
