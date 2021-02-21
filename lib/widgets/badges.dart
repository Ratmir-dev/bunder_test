import 'package:flutter/material.dart';

class Badges extends StatelessWidget {
  final Map _user;
  Badges(this._user);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Badge("NO ACCESS", Color.fromRGBO(254, 71, 74, 1)),
        SizedBox(
          width: _user["work"] != null ? 15 : 0,
        ),
        _user["work"] != null
            ? Badge("AVAILABLE", Color.fromRGBO(10, 235, 154, 1))
            : SizedBox(),
        SizedBox(
          width: _user["work"] != null ? 15 : 0,
        ),
        _user["phone"] != null && _user["email"] != null
            ? Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color.fromRGBO(210, 57, 223, 1),
                      Color.fromRGBO(30, 199, 236, 1),
                      // Color.fromRGBO(210, 57, 223, 1),
                    ]),
                    borderRadius: BorderRadius.circular(4)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 6.0, vertical: 3.0),
                  child: Text(
                    "MERGED",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w800),
                  ),
                ),
              )
            : SizedBox()
      ],
    );
  }
}

class Badge extends StatelessWidget {
  final String _text;
  final Color _color;
  Badge(this._text, this._color);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: _color, borderRadius: BorderRadius.circular(4)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 3.0),
        child: Text(
          _text,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800),
        ),
      ),
    );
  }
}
