import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserInfo extends StatelessWidget {
  Map _user;
  UserInfo(this._user);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Lisa Grindon",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                  color: Color.fromRGBO(40, 40, 46, 1)),
            ),
            SizedBox(
              width: _user["verificate"] == true ? 10 : 0,
            ),
            _user["verificate"] == true
                ? SvgPicture.asset(
                    "assets/confirm.svg",
                    width: 12,
                    height: 12,
                    color: Color.fromRGBO(210, 57, 223, 1),
                  )
                : SizedBox()
          ],
        ),
        _user["work"] != null
            ? Text(
                _user["work"],
                style: TextStyle(
                    color: Color.fromRGBO(40, 40, 46, 1),
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              )
            : SizedBox(),
        _user["company"] != null
            ? Text(
                _user["company"],
                style: TextStyle(
                    color: Color.fromRGBO(40, 40, 46, 1),
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              )
            : SizedBox(),
        SizedBox(
          height: _user["work"] != null ? 10 : 0,
        ),
        _user["work"] != null
            ? FieldInfo("Mobile phone", _user["token_count"])
            : SizedBox(),
        SizedBox(
          height: _user["work"] != null ? 5 : 0,
        ),
        _user["work"] != null
            ? FieldInfo("Email", _user["token_count"])
            : SizedBox()
      ],
    );
  }
}

class FieldInfo extends StatelessWidget {
  String _text;
  String _tokenCount;
  FieldInfo(this._text, this._tokenCount);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      height: 40,
      color: Color.fromRGBO(234, 236, 241, 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: SvgPicture.asset(
                "assets/union.svg",
                width: 12,
                height: 18,
                color: Color.fromRGBO(205, 214, 235, 1),
              ),
            ),
          ),
          Text(_text,
              style: TextStyle(
                  color: Color.fromRGBO(40, 40, 46, 1),
                  fontWeight: FontWeight.w600,
                  fontSize: 14)),
          GestureDetector(
            onTap: () {},
            child: Stack(children: [
              Positioned(
                  left: 15,
                  bottom: 18,
                  child: Text(
                    _tokenCount,
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 14,
                        color: Color.fromRGBO(210, 57, 223, 1)),
                  )),
              Container(
                height: 32,
                child: Padding(
                  padding: const EdgeInsets.only(right: 18.0),
                  child: SvgPicture.asset(
                    "assets/counter.svg",
                    width: 22,
                    // height: 32,
                    color: Color.fromRGBO(210, 57, 223, 1),
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
