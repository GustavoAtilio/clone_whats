// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class PhoneCustom extends StatelessWidget {
  final String name;
  final String hour;
  const PhoneCustom({
    Key? key,
    required this.name,
    required this.hour,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          const CircleAvatar(),
          const SizedBox(width: 10),
          Column(
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.arrow_downward,
                    color: Colors.green,
                    size: 18,
                  ),
                  Text(
                    'Hoje $hour',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 182, 185, 166),
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Expanded(child: Container()),
          const Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.phone,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
