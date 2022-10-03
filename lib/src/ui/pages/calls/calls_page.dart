import 'package:flutter/material.dart';

import 'components/phone_custom.dart';

class CallsPage extends StatelessWidget {
  const CallsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      padding: const EdgeInsets.only(
        top: 15,
        left: 10,
      ),
      child: Expanded(
        child: ListView(
          children: const [
            PhoneCustom(name: 'Gustavo', hour: '10:12'),
            PhoneCustom(name: 'Marcelo', hour: '13:30'),
            PhoneCustom(name: 'Hertom', hour: '16:40'),
            PhoneCustom(name: 'Elisete', hour: '22:10'),
          ],
        ),
      ),
    );
  }
}
