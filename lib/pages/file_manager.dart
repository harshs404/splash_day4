import 'package:day4/widgets/hybrid_icons.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class FileManager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.shade200,
        title: Text(
          "File Manager",
          style: TextStyle(color: Colors.grey.shade700),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 16.0,
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      HybridIcons(
                          Colors.blueAccent, Icons.photo, "Pictures", 1.0),
                      HybridIcons(
                          Colors.redAccent, Icons.music_note, "Music", 3.5),
                      HybridIcons(Colors.purpleAccent, Icons.play_arrow,
                          "Videos", 15.0),
                    ],
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      HybridIcons(
                          Colors.greenAccent, Icons.android, "APks", 3.5),
                      HybridIcons(Colors.yellowAccent, Icons.insert_drive_file,
                          "Documents", 10.0),
                      HybridIcons(Colors.blue, Icons.call_made, "Zips", 18.0),
                    ],
                  ),
                ],
              ),
            ),
            Divider(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 32.0),
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Local Storage",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "3.0 GB Available Total 22.5 GB ",
                    style: TextStyle(
                        fontSize: 14, color: Colors.black.withOpacity(0.60)),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  LinearPercentIndicator(
                    lineHeight: 14.0,
                    percent: 0.5,
                    backgroundColor: Colors.grey,
                    progressColor: Colors.blue,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 8.0),
              height: 16,
              color: Colors.grey.shade200,
            ),
            ListTile(
              title: Text("ALL DATA"),
              subtitle: Divider(),
            ),
            ListTile(
              title: Text("SD CARD"),
              subtitle: Divider(),
            ),
          ],
        ),
      ),
    );
  }
}
