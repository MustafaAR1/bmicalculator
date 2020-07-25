import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenderCards extends StatelessWidget {
  final String gender;
  final Icon genderIcon;

  GenderCards({@required this.gender, @required this.genderIcon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          FontAwesomeIcons.venus,
          size: 80,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          gender,
          style: TextStyle(
            fontSize: 20,
          ),
        )
      ],
    );
  }
}
