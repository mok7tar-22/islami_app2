import 'package:flutter/material.dart';
class TableHeader extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        Expanded(
          child: Container(
              padding: EdgeInsets.all(5),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                        color: Color.fromARGB(255, 183, 147, 95),
                        width: 3),
                    bottom: BorderSide(
                        color: Color.fromARGB(255, 183, 147, 95),
                        width: 3),
                    right: BorderSide(
                        color: Color.fromARGB(255, 183, 147, 95),
                        width: 3),
                  )),
              child: Text(
                "عدد الايات",
                style: TextStyle(
                    fontSize: 25, fontWeight: FontWeight.bold),
              )),
        ),
        Expanded(
          child: Container(
              padding: EdgeInsets.all(5),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                        color: Color.fromARGB(255, 183, 147, 95),
                        width: 3),
                    bottom: BorderSide(
                        color: Color.fromARGB(255, 183, 147, 95),
                        width: 3),
                  )),
              child: Text(
                "اسم السورة",
                style: TextStyle(
                    fontSize: 25, fontWeight: FontWeight.bold),
              )),
        ),
      ],
    );
  }
}
