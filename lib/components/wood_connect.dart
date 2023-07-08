import 'package:flutter/material.dart';

class WoodConnect extends StatelessWidget {
  WoodConnect({required this.soundNumber});

  final int soundNumber;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.brown,
            ),
            width: 28,
            margin: EdgeInsets.fromLTRB(80 - this.soundNumber.toDouble() * 10, 1, 0, 1),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.brown,
            ),
            width: 28,
            margin: EdgeInsets.fromLTRB(0, 1, 80 - this.soundNumber.toDouble() * 10, 1),
          ),
        ],
      ),
    );
  }
}
