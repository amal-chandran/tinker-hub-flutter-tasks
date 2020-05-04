import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RoundIconBtn extends StatelessWidget {
  IconData btnIcon;
  String btnLabel;
  Color btnColor;
  Function onPress;

  RoundIconBtn({this.btnLabel, this.btnIcon, this.btnColor, this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onPress,
      child: Container(
          padding: EdgeInsets.symmetric(vertical: 14, horizontal: 16),
          decoration: BoxDecoration(
              color: this.btnColor,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              )
              // topRight: Radius.circular(28)),
              ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                this.btnIcon,
                size: 30,
                color: Colors.white70,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  this.btnLabel,
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 25,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          )),
    );
  }
}
