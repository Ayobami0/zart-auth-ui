import 'package:flutter/material.dart';
import 'package:zert_auth_ui/core/models/user.dart';

class ZartUserCard extends StatelessWidget {
  const ZartUserCard(this.user, {super.key});

  final User user;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: ShapeDecoration(
            shape: CircleBorder(side: BorderSide(color: Colors.black12)),
          ),
          child: Icon(Icons.person, size: 100),
        ),
        Text(user.fullName, style: TextStyle(fontSize: 24),),
        Text(user.id.toString()),
        Text(user.email),
        Text(user.phone),
      ],
    );
  }
}
