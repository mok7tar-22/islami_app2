import 'package:flutter/material.dart';
class SoraListItem extends StatelessWidget {
   final ayatNumber,soraName;

   SoraListItem(this.ayatNumber, this.soraName);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
              padding: EdgeInsets.all(5),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  border: Border(
                    right: BorderSide(
                        color: Color.fromARGB(
                            255, 183, 147, 95),
                        width: 3),
                  )),
              child: Text(
                ayatNumber,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              )),
        ),
        Expanded(
          child: Container(
              padding: EdgeInsets.all(5),
              alignment: Alignment.center,
              child: Text(
                soraName,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              )),
        ),
      ],
    );
  }
}
