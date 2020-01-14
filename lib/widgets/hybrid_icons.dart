import 'package:flutter/material.dart';

class HybridIcons extends StatelessWidget {

  HybridIcons(this._bgColor, this._iconData, this._title, this._size);


  final Color _bgColor;
  final IconData _iconData;
  final String _title;
  final double _size;


  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: <Widget>[
            CircleAvatar(
              backgroundColor: _bgColor,
              child: Icon(
                _iconData,
                color: Colors.white,
              ),
            ),
            Text(
              _title,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black.withOpacity(0.80)),
            ),
            Text(
              "$_size MB",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black.withOpacity(0.60)),
            ),
          ],
        ));
  }

}